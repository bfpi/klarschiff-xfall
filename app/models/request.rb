class Request < MainApplication
  include ActiveModel::Model

  def data
    @data = Request::C_Data.new if @data.nil?
    @data
  end

  def id
    __xmlattr["request"][:Id]
  end

  def id=(value)
    __xmlattr["request"] = { "Id": value }
  end

  def betreff=(value)
    data.name = value
  end

  def details=(value)
    data.description = value
  end

  %w{ Gross Normal Thumb }.each do |groesse|
    define_method("foto#{ groesse }=") do |value|
      return if value.nil?
      doc_data = Document::C_Data.new
      doc_data.name = value.gsub(".jpg", "")
      doc_data.contentType = "image/jpeg"
      doc_data.filename = value

      doc = Document.new
      doc.xmlattr_Id = { "Id": value }
      doc.xmlattr_Type = { "Type": "APPLICATION" }
      doc.xmlattr_ExternalDocument = { "ExternalDocument": true }
      doc.xmlattr_ExternalDocumentId = { "ExternalDocumentId": value }
      doc.data = doc_data
      document << doc

      pa_data = partial_application_data
      pa_data_referredDocument = PartialApplication::C_Data::ReferredDocument.new
      pa_data_referredDocument.xmlattr_Id = { "Id": value }
      pa_data.referredDocument << pa_data_referredDocument
      self.partial_application_data = pa_data
    end
  end

  def authorEmail
    partialApplication.each do |pa|
      pa.data.partnerFunction.each do |pf|
        if pf.data.partnerRole == "APPLICANT"
          partner.each do |p|
            if p.xmlattr_Id.value == pf.data.partnerID
              emails = p.try(:data).try(:contact).try(:email)
              emails.each do |email|
                return email.address
              end unless emails.nil?
            end
          end
        end
      end
    end
    nil
  end

  def autorEmail=(value)
    partnerId = Base64.encode64(value).strip

    part = Partner.new
    part.xmlattr_Id = { "Id": partnerId }
    p_data = Partner::C_Data.new
    p_data_contact = Partner::C_Data::Contact.new
    p_data_contact_email = Partner::C_Data::Contact::Email.new
    p_data_contact_email.address = value
    p_data_contact.email = p_data_contact_email
    p_data.contact = p_data_contact
    part.data = p_data
    partner << part

    pa_data = partial_application_data
    pa_data_partnerFunction = PartialApplication::C_Data::PartnerFunction.new
    pa_data_partnerFunction_data = PartialApplication::C_Data::PartnerFunction::C_Data.new
    pa_data_partnerFunction_data.partnerID = partnerId
    pa_data_partnerFunction_data.partnerRole = "APPLICANT"
    pa_data_partnerFunction.data = pa_data_partnerFunction_data
    pa_data.partnerFunction = pa_data_partnerFunction

    self.partial_application_data = pa_data
  end

  def ksBild
    document.each do |doc|
      data = doc.try(:data)
      return data.content if data && data.contentType == "image/jpeg" && !data.content.blank?
    end

  end

  def ksCustomData
    partialApplication.each do |pa|
      return pa.data.customData
    end
  end

  def backend_create_params
    {
      resultObjectOnSubmit: true,
      betreff: data.name,
      details: data.description,
      autorEmail: authorEmail,
      typ: ksCustomData.type, # problem ODER idee
      kategorie: ksCustomData.category, # 28 = Sondermüll
      positionWGS84: "POINT (#{ ksCustomData.latitude } #{ ksCustomData.longitude })",
      bild: ksBild
    }
  end

  def update_attributes(params={})
    params.each do |attr, value|
      self.public_send("#{attr}=", value)
    end if params
  end

  def method_missing(method, *arguments, &block)
    if method.to_s =~ /.*=$/
      Rails.logger.info "Method #{ method } not found." unless Rails.env.production?
    else
      super
    end
  end

  private
  def partial_application_data
    pa = (partialApplication.first || PartialApplication.new)
    pa.data || PartialApplication::C_Data.new
  end

  def partial_application_data=(value)
    partialApplication << PartialApplication.new if partialApplication.blank?
    partialApplication.first.data = value
  end

end