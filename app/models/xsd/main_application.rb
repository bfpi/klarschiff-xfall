require 'xsd/qname'

# {http://www.eu-dlr.org/x-eu-dlr.org/V2}MainApplication
#   action - SOAP::SOAPString
#   header - MainApplication::Header
#   data - MainApplication::C_Data
#   partner - MainApplication::Partner
#   document - MainApplication::Document
#   partialApplication - MainApplication::PartialApplication
#   message - MainApplication::Message
#   errors - MainApplication::Errors
#   xmlattr_Id - SOAP::SOAPString
class MainApplication
  AttrId = XSD::QName.new(nil, "Id")

  # inner class for member: Header
  # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Header
  #   task - SOAP::SOAPString
  #   note - SOAP::SOAPString
  #   status - SOAP::SOAPString
  #   processType - MainApplication::Header::ProcessType
  class Header

    # inner class for member: ProcessType
    # {http://www.eu-dlr.org/x-eu-dlr.org/V2}ProcessType
    #   type - SOAP::SOAPString
    #   variety - SOAP::SOAPString
    class ProcessType
      attr_accessor :type
      attr_accessor :variety

      def initialize(type = nil, variety = nil)
        @type = type
        @variety = variety
      end
    end

    attr_accessor :task
    attr_accessor :note
    attr_accessor :status
    attr_accessor :processType

    def initialize(task = nil, note = nil, status = nil, processType = nil)
      @task = task
      @note = note
      @status = status
      @processType = processType
    end
  end

  # inner class for member: Data
  # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Data
  #   name - SOAP::SOAPString
  #   typeOfActivity - MainApplication::C_Data::TypeOfActivity
  #   description - SOAP::SOAPString
  #   mainReference - SOAP::SOAPString
  class C_Data

    # inner class for member: TypeOfActivity
    # {http://www.eu-dlr.org/x-eu-dlr.org/V2}TypeOfActivity
    #   id - SOAP::SOAPString
    #   title - SOAP::SOAPString
    class TypeOfActivity
      attr_accessor :id
      attr_accessor :title

      def initialize(id = nil, title = nil)
        @id = id
        @title = title
      end
    end

    attr_accessor :name
    attr_accessor :typeOfActivity
    attr_accessor :description
    attr_accessor :mainReference

    def initialize(name = nil, typeOfActivity = nil, description = nil, mainReference = nil)
      @name = name
      @typeOfActivity = typeOfActivity
      @description = description
      @mainReference = mainReference
    end
  end

  # inner class for member: Partner
  # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Partner
  #   header - MainApplication::Partner::Header
  #   data - MainApplication::Partner::C_Data
  #   xmlattr_Id - SOAP::SOAPString
  class Partner
    AttrId = XSD::QName.new(nil, "Id")

    # inner class for member: Header
    # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Header
    #   task - SOAP::SOAPString
    #   note - SOAP::SOAPString
    class Header
      attr_accessor :task
      attr_accessor :note

      def initialize(task = nil, note = nil)
        @task = task
        @note = note
      end
    end

    # inner class for member: Data
    # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Data
    #   partnerType - SOAP::SOAPString
    #   partnerLanguage - SOAP::SOAPString
    #   formOfAddress - SOAP::SOAPString
    #   academicTitle - SOAP::SOAPString
    #   firstName - SOAP::SOAPString
    #   lastName - SOAP::SOAPString
    #   orgName - SOAP::SOAPString
    #   annex - SOAP::SOAPString
    #   address - MainApplication::Partner::C_Data::Address
    #   contact - MainApplication::Partner::C_Data::Contact
    #   other - (any)
    class C_Data

      # inner class for member: Address
      # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Address
      #   street - SOAP::SOAPString
      #   houseNo - SOAP::SOAPString
      #   postalCode - SOAP::SOAPString
      #   pOBPostalCode - SOAP::SOAPString
      #   postOfficeBox - SOAP::SOAPString
      #   city - SOAP::SOAPString
      #   country - SOAP::SOAPString
      class Address
        attr_accessor :street
        attr_accessor :houseNo
        attr_accessor :postalCode
        attr_accessor :pOBPostalCode
        attr_accessor :postOfficeBox
        attr_accessor :city
        attr_accessor :country

        def initialize(street = nil, houseNo = nil, postalCode = nil, pOBPostalCode = nil, postOfficeBox = nil, city = nil, country = nil)
          @street = street
          @houseNo = houseNo
          @postalCode = postalCode
          @pOBPostalCode = pOBPostalCode
          @postOfficeBox = postOfficeBox
          @city = city
          @country = country
        end
      end

      # inner class for member: Contact
      # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Contact
      #   telNo - MainApplication::Partner::C_Data::Contact::TelNo
      #   mobileNo - MainApplication::Partner::C_Data::Contact::MobileNo
      #   faxNo - MainApplication::Partner::C_Data::Contact::FaxNo
      #   email - MainApplication::Partner::C_Data::Contact::Email
      #   signatureApplication - MainApplication::Partner::C_Data::Contact::SignatureApplication
      #   other - (any)
      #   preferredContact - SOAP::SOAPString
      class Contact

        # inner class for member: TelNo
        # {http://www.eu-dlr.org/x-eu-dlr.org/V2}TelNo
        #   xmlattr_Preferred - SOAP::SOAPBoolean
        class TelNo < ::String
          AttrPreferred = XSD::QName.new(nil, "Preferred")

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_Preferred
            __xmlattr[AttrPreferred]
          end

          def xmlattr_Preferred=(value)
            __xmlattr[AttrPreferred] = value
          end

          def initialize(*arg)
            super
            @__xmlattr = {}
          end
        end

        # inner class for member: MobileNo
        # {http://www.eu-dlr.org/x-eu-dlr.org/V2}MobileNo
        #   xmlattr_Preferred - SOAP::SOAPBoolean
        class MobileNo < ::String
          AttrPreferred = XSD::QName.new(nil, "Preferred")

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_Preferred
            __xmlattr[AttrPreferred]
          end

          def xmlattr_Preferred=(value)
            __xmlattr[AttrPreferred] = value
          end

          def initialize(*arg)
            super
            @__xmlattr = {}
          end
        end

        # inner class for member: FaxNo
        # {http://www.eu-dlr.org/x-eu-dlr.org/V2}FaxNo
        #   xmlattr_Preferred - SOAP::SOAPBoolean
        class FaxNo < ::String
          AttrPreferred = XSD::QName.new(nil, "Preferred")

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_Preferred
            __xmlattr[AttrPreferred]
          end

          def xmlattr_Preferred=(value)
            __xmlattr[AttrPreferred] = value
          end

          def initialize(*arg)
            super
            @__xmlattr = {}
          end
        end

        # inner class for member: Email
        # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Email
        #   address - SOAP::SOAPString
        #   publicKey - SOAP::SOAPString
        #   xmlattr_Preferred - SOAP::SOAPBoolean
        class Email
          AttrPreferred = XSD::QName.new(nil, "Preferred")

          attr_accessor :address
          attr_accessor :publicKey

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_Preferred
            __xmlattr[AttrPreferred]
          end

          def xmlattr_Preferred=(value)
            __xmlattr[AttrPreferred] = value
          end

          def initialize(address = nil, publicKey = nil)
            @address = address
            @publicKey = publicKey
            @__xmlattr = {}
          end
        end

        # inner class for member: SignatureApplication
        # {http://www.eu-dlr.org/x-eu-dlr.org/V2}SignatureApplication
        #   clientType - SOAP::SOAPString
        #   receiverID - SOAP::SOAPString
        #   xmlattr_Preferred - SOAP::SOAPBoolean
        class SignatureApplication
          AttrPreferred = XSD::QName.new(nil, "Preferred")

          attr_accessor :clientType
          attr_accessor :receiverID

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_Preferred
            __xmlattr[AttrPreferred]
          end

          def xmlattr_Preferred=(value)
            __xmlattr[AttrPreferred] = value
          end

          def initialize(clientType = nil, receiverID = nil)
            @clientType = clientType
            @receiverID = receiverID
            @__xmlattr = {}
          end
        end

        attr_accessor :telNo
        attr_accessor :mobileNo
        attr_accessor :faxNo
        attr_accessor :email
        attr_accessor :signatureApplication
        attr_accessor :other
        attr_accessor :preferredContact

        def initialize(telNo = [], mobileNo = [], faxNo = [], email = [], signatureApplication = [], other = [], preferredContact = nil)
          @telNo = telNo
          @mobileNo = mobileNo
          @faxNo = faxNo
          @email = email
          @signatureApplication = signatureApplication
          @other = other
          @preferredContact = preferredContact
        end
      end

      attr_accessor :partnerType
      attr_accessor :partnerLanguage
      attr_accessor :formOfAddress
      attr_accessor :academicTitle
      attr_accessor :firstName
      attr_accessor :lastName
      attr_accessor :orgName
      attr_accessor :annex
      attr_accessor :address
      attr_accessor :contact
      attr_accessor :other

      def initialize(partnerType = nil, partnerLanguage = nil, formOfAddress = nil, academicTitle = nil, firstName = nil, lastName = nil, orgName = nil, annex = nil, address = nil, contact = nil, other = nil)
        @partnerType = partnerType
        @partnerLanguage = partnerLanguage
        @formOfAddress = formOfAddress
        @academicTitle = academicTitle
        @firstName = firstName
        @lastName = lastName
        @orgName = orgName
        @annex = annex
        @address = address
        @contact = contact
        @other = other
      end
    end

    attr_accessor :header
    attr_accessor :data

    def __xmlattr
      @__xmlattr ||= {}
    end

    def xmlattr_Id
      __xmlattr[AttrId]
    end

    def xmlattr_Id=(value)
      __xmlattr[AttrId] = value
    end

    def initialize(header = nil, data = nil)
      @header = header
      @data = data
      @__xmlattr = {}
    end
  end

  # inner class for member: Document
  # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Document
  #   header - MainApplication::Document::Header
  #   data - MainApplication::Document::C_Data
  #   xmlattr_Id - SOAP::SOAPString
  #   xmlattr_Type - SOAP::SOAPString
  #   xmlattr_ExternalDocument - SOAP::SOAPBoolean
  #   xmlattr_Template - SOAP::SOAPString
  #   xmlattr_ExternalDocumentId - SOAP::SOAPString
  class Document
    AttrExternalDocument = XSD::QName.new(nil, "ExternalDocument")
    AttrExternalDocumentId = XSD::QName.new(nil, "ExternalDocumentId")
    AttrId = XSD::QName.new(nil, "Id")
    AttrTemplate = XSD::QName.new(nil, "Template")
    AttrType = XSD::QName.new(nil, "Type")

    # inner class for member: Header
    # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Header
    #   task - SOAP::SOAPString
    #   note - SOAP::SOAPString
    #   external - MainApplication::Document::Header::External
    #   signature - MainApplication::Document::Header::Signature
    class Header

      # inner class for member: External
      # {http://www.eu-dlr.org/x-eu-dlr.org/V2}External
      #   hashAlgorithm - (any)
      #   hashValue - (any)
      class External
        attr_accessor :hashAlgorithm
        attr_accessor :hashValue

        def initialize(hashAlgorithm = nil, hashValue = nil)
          @hashAlgorithm = hashAlgorithm
          @hashValue = hashValue
        end
      end

      # inner class for member: Signature
      # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Signature
      #   base64Signature - MainApplication::Document::Header::Signature::Base64Signature
      #   signaturePolicyIdentifier - SOAP::SOAPAnyURI
      #   xmlattr_SignatureType - SOAP::SOAPString
      class Signature
        AttrSignatureType = XSD::QName.new(nil, "SignatureType")

        # inner class for member: Base64Signature
        # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Base64Signature
        #   xmlattr_Type - SOAP::SOAPAnyURI
        class Base64Signature < ::String
          AttrType = XSD::QName.new(nil, "Type")

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_Type
            __xmlattr[AttrType]
          end

          def xmlattr_Type=(value)
            __xmlattr[AttrType] = value
          end

          def initialize(*arg)
            super
            @__xmlattr = {}
          end
        end

        attr_accessor :base64Signature
        attr_accessor :signaturePolicyIdentifier

        def __xmlattr
          @__xmlattr ||= {}
        end

        def xmlattr_SignatureType
          __xmlattr[AttrSignatureType]
        end

        def xmlattr_SignatureType=(value)
          __xmlattr[AttrSignatureType] = value
        end

        def initialize(base64Signature = nil, signaturePolicyIdentifier = nil)
          @base64Signature = base64Signature
          @signaturePolicyIdentifier = signaturePolicyIdentifier
          @__xmlattr = {}
        end
      end

      attr_accessor :task
      attr_accessor :note
      attr_accessor :external
      attr_accessor :signature

      def initialize(task = nil, note = nil, external = nil, signature = nil)
        @task = task
        @note = note
        @external = external
        @signature = signature
      end
    end

    # inner class for member: Data
    # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Data
    #   name - SOAP::SOAPString
    #   filename - SOAP::SOAPString
    #   contentType - SOAP::SOAPString
    #   content - SOAP::SOAPBase64
    #   schemaType - SOAP::SOAPAnyURI
    #   xMLRepresentation - SOAP::SOAPBase64
    class C_Data
      attr_accessor :name
      attr_accessor :filename
      attr_accessor :contentType
      attr_accessor :content
      attr_accessor :schemaType
      attr_accessor :xMLRepresentation

      def initialize(name = nil, filename = nil, contentType = nil, content = nil, schemaType = nil, xMLRepresentation = nil)
        @name = name
        @filename = filename
        @contentType = contentType
        @content = content
        @schemaType = schemaType
        @xMLRepresentation = xMLRepresentation
      end
    end

    attr_accessor :header
    attr_accessor :data

    def __xmlattr
      @__xmlattr ||= {}
    end

    def xmlattr_Id
      __xmlattr[AttrId]
    end

    def xmlattr_Id=(value)
      __xmlattr[AttrId] = value
    end

    def xmlattr_Type
      __xmlattr[AttrType]
    end

    def xmlattr_Type=(value)
      __xmlattr[AttrType] = value
    end

    def xmlattr_ExternalDocument
      __xmlattr[AttrExternalDocument]
    end

    def xmlattr_ExternalDocument=(value)
      __xmlattr[AttrExternalDocument] = value
    end

    def xmlattr_Template
      __xmlattr[AttrTemplate]
    end

    def xmlattr_Template=(value)
      __xmlattr[AttrTemplate] = value
    end

    def xmlattr_ExternalDocumentId
      __xmlattr[AttrExternalDocumentId]
    end

    def xmlattr_ExternalDocumentId=(value)
      __xmlattr[AttrExternalDocumentId] = value
    end

    def initialize(header = nil, data = nil)
      @header = header
      @data = data
      @__xmlattr = {}
    end
  end

  # inner class for member: PartialApplication
  # {http://www.eu-dlr.org/x-eu-dlr.org/V2}PartialApplication
  #   header - MainApplication::PartialApplication::Header
  #   data - MainApplication::PartialApplication::C_Data
  #   officialLetter - MainApplication::PartialApplication::OfficialLetter
  #   xmlattr_Id - SOAP::SOAPString
  class PartialApplication
    AttrId = XSD::QName.new(nil, "Id")

    # inner class for member: Header
    # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Header
    #   task - SOAP::SOAPString
    #   note - SOAP::SOAPString
    #   status - SOAP::SOAPString
    #   officialLetterRequired - SOAP::SOAPBoolean
    class Header
      attr_accessor :task
      attr_accessor :note
      attr_accessor :status
      attr_accessor :officialLetterRequired

      def initialize(task = nil, note = nil, status = nil, officialLetterRequired = nil)
        @task = task
        @note = note
        @status = status
        @officialLetterRequired = officialLetterRequired
      end
    end

    # inner class for member: Data
    # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Data
    #   parentPartialApplicationID - SOAP::SOAPString
    #   partialReference - SOAP::SOAPString
    #   publicServiceTypeID - SOAP::SOAPString
    #   publicServiceType - SOAP::SOAPString
    #   description - SOAP::SOAPString
    #   timeLimit - SOAP::SOAPInt
    #   partnerFunction - MainApplication::PartialApplication::C_Data::PartnerFunction
    #   referredDocument - MainApplication::PartialApplication::C_Data::ReferredDocument
    #   customData - SOAP::SOAPBase64
    class C_Data

      # inner class for member: PartnerFunction
      # {http://www.eu-dlr.org/x-eu-dlr.org/V2}PartnerFunction
      #   header - MainApplication::PartialApplication::C_Data::PartnerFunction::Header
      #   data - MainApplication::PartialApplication::C_Data::PartnerFunction::C_Data
      class PartnerFunction

        # inner class for member: Header
        # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Header
        #   task - SOAP::SOAPString
        #   note - SOAP::SOAPString
        class Header
          attr_accessor :task
          attr_accessor :note

          def initialize(task = nil, note = nil)
            @task = task
            @note = note
          end
        end

        # inner class for member: Data
        # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Data
        #   partnerID - SOAP::SOAPString
        #   partnerRole - SOAP::SOAPString
        #   partnerStatus - SOAP::SOAPString
        #   partnerContact - MainApplication::PartialApplication::C_Data::PartnerFunction::C_Data::PartnerContact
        class C_Data

          # inner class for member: PartnerContact
          # {http://www.eu-dlr.org/x-eu-dlr.org/V2}PartnerContact
          #   partnerID - SOAP::SOAPString
          #   xmlattr_Preferred - SOAP::SOAPBoolean
          class PartnerContact
            AttrPreferred = XSD::QName.new(nil, "Preferred")

            attr_accessor :partnerID

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_Preferred
              __xmlattr[AttrPreferred]
            end

            def xmlattr_Preferred=(value)
              __xmlattr[AttrPreferred] = value
            end

            def initialize(partnerID = nil)
              @partnerID = partnerID
              @__xmlattr = {}
            end
          end

          attr_accessor :partnerID
          attr_accessor :partnerRole
          attr_accessor :partnerStatus
          attr_accessor :partnerContact

          def initialize(partnerID = nil, partnerRole = nil, partnerStatus = nil, partnerContact = [])
            @partnerID = partnerID
            @partnerRole = partnerRole
            @partnerStatus = partnerStatus
            @partnerContact = partnerContact
          end
        end

        attr_accessor :header
        attr_accessor :data

        def initialize(header = nil, data = nil)
          @header = header
          @data = data
        end
      end

      # inner class for member: ReferredDocument
      # {http://www.eu-dlr.org/x-eu-dlr.org/V2}ReferredDocument
      #   status - SOAP::SOAPString
      #   xmlattr_Id - SOAP::SOAPString
      class ReferredDocument
        AttrId = XSD::QName.new(nil, "Id")

        attr_accessor :status

        def __xmlattr
          @__xmlattr ||= {}
        end

        def xmlattr_Id
          __xmlattr[AttrId]
        end

        def xmlattr_Id=(value)
          __xmlattr[AttrId] = value
        end

        def initialize(status = nil)
          @status = status
          @__xmlattr = {}
        end
      end

      attr_accessor :parentPartialApplicationID
      attr_accessor :partialReference
      attr_accessor :publicServiceTypeID
      attr_accessor :publicServiceType
      attr_accessor :description
      attr_accessor :timeLimit
      attr_accessor :partnerFunction
      attr_accessor :referredDocument
      attr_accessor :customData

      def initialize(parentPartialApplicationID = [], partialReference = nil, publicServiceTypeID = nil, publicServiceType = nil, description = nil, timeLimit = nil, partnerFunction = [], referredDocument = [], customData = nil)
        @parentPartialApplicationID = parentPartialApplicationID
        @partialReference = partialReference
        @publicServiceTypeID = publicServiceTypeID
        @publicServiceType = publicServiceType
        @description = description
        @timeLimit = timeLimit
        @partnerFunction = partnerFunction
        @referredDocument = referredDocument
        @customData = customData
      end
    end

    # inner class for member: OfficialLetter
    # {http://www.eu-dlr.org/x-eu-dlr.org/V2}OfficialLetter
    #   header - MainApplication::PartialApplication::OfficialLetter::Header
    #   data - MainApplication::PartialApplication::OfficialLetter::C_Data
    class OfficialLetter

      # inner class for member: Header
      # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Header
      #   task - SOAP::SOAPString
      #   note - SOAP::SOAPString
      class Header
        attr_accessor :task
        attr_accessor :note

        def initialize(task = nil, note = nil)
          @task = task
          @note = note
        end
      end

      # inner class for member: Data
      # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Data
      #   decision - SOAP::SOAPString
      #   decisionDate - SOAP::SOAPDate
      #   charge - SOAP::SOAPDecimal
      #   document - MainApplication::PartialApplication::OfficialLetter::C_Data::Document
      class C_Data

        # inner class for member: Document
        # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Document
        #   header - MainApplication::PartialApplication::OfficialLetter::C_Data::Document::Header
        #   data - MainApplication::PartialApplication::OfficialLetter::C_Data::Document::C_Data
        #   xmlattr_Id - SOAP::SOAPString
        #   xmlattr_ExternalDocument - SOAP::SOAPBoolean
        class Document
          AttrExternalDocument = XSD::QName.new(nil, "ExternalDocument")
          AttrId = XSD::QName.new(nil, "Id")

          # inner class for member: Header
          # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Header
          #   task - SOAP::SOAPString
          #   note - SOAP::SOAPString
          #   external - MainApplication::PartialApplication::OfficialLetter::C_Data::Document::Header::External
          #   status - SOAP::SOAPString
          #   signature - MainApplication::PartialApplication::OfficialLetter::C_Data::Document::Header::Signature
          class Header

            # inner class for member: External
            # {http://www.eu-dlr.org/x-eu-dlr.org/V2}External
            #   hashAlgorithm - (any)
            #   hashValue - (any)
            class External
              attr_accessor :hashAlgorithm
              attr_accessor :hashValue

              def initialize(hashAlgorithm = nil, hashValue = nil)
                @hashAlgorithm = hashAlgorithm
                @hashValue = hashValue
              end
            end

            # inner class for member: Signature
            # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Signature
            #   base64Signature - MainApplication::PartialApplication::OfficialLetter::C_Data::Document::Header::Signature::Base64Signature
            #   signaturePolicyIdentifier - SOAP::SOAPAnyURI
            #   xmlattr_SignatureType - SOAP::SOAPString
            class Signature
              AttrSignatureType = XSD::QName.new(nil, "SignatureType")

              # inner class for member: Base64Signature
              # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Base64Signature
              #   xmlattr_Type - SOAP::SOAPAnyURI
              class Base64Signature < ::String
                AttrType = XSD::QName.new(nil, "Type")

                def __xmlattr
                  @__xmlattr ||= {}
                end

                def xmlattr_Type
                  __xmlattr[AttrType]
                end

                def xmlattr_Type=(value)
                  __xmlattr[AttrType] = value
                end

                def initialize(*arg)
                  super
                  @__xmlattr = {}
                end
              end

              attr_accessor :base64Signature
              attr_accessor :signaturePolicyIdentifier

              def __xmlattr
                @__xmlattr ||= {}
              end

              def xmlattr_SignatureType
                __xmlattr[AttrSignatureType]
              end

              def xmlattr_SignatureType=(value)
                __xmlattr[AttrSignatureType] = value
              end

              def initialize(base64Signature = nil, signaturePolicyIdentifier = nil)
                @base64Signature = base64Signature
                @signaturePolicyIdentifier = signaturePolicyIdentifier
                @__xmlattr = {}
              end
            end

            attr_accessor :task
            attr_accessor :note
            attr_accessor :external
            attr_accessor :status
            attr_accessor :signature

            def initialize(task = nil, note = nil, external = nil, status = nil, signature = nil)
              @task = task
              @note = note
              @external = external
              @status = status
              @signature = signature
            end
          end

          # inner class for member: Data
          # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Data
          #   name - SOAP::SOAPString
          #   filename - SOAP::SOAPString
          #   contentType - SOAP::SOAPString
          #   content - SOAP::SOAPBase64
          #   schemaType - SOAP::SOAPAnyURI
          #   xMLRepresentation - SOAP::SOAPBase64
          class C_Data
            attr_accessor :name
            attr_accessor :filename
            attr_accessor :contentType
            attr_accessor :content
            attr_accessor :schemaType
            attr_accessor :xMLRepresentation

            def initialize(name = nil, filename = nil, contentType = nil, content = nil, schemaType = nil, xMLRepresentation = nil)
              @name = name
              @filename = filename
              @contentType = contentType
              @content = content
              @schemaType = schemaType
              @xMLRepresentation = xMLRepresentation
            end
          end

          attr_accessor :header
          attr_accessor :data

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_Id
            __xmlattr[AttrId]
          end

          def xmlattr_Id=(value)
            __xmlattr[AttrId] = value
          end

          def xmlattr_ExternalDocument
            __xmlattr[AttrExternalDocument]
          end

          def xmlattr_ExternalDocument=(value)
            __xmlattr[AttrExternalDocument] = value
          end

          def initialize(header = nil, data = nil)
            @header = header
            @data = data
            @__xmlattr = {}
          end
        end

        attr_accessor :decision
        attr_accessor :decisionDate
        attr_accessor :charge
        attr_accessor :document

        def initialize(decision = nil, decisionDate = nil, charge = nil, document = [])
          @decision = decision
          @decisionDate = decisionDate
          @charge = charge
          @document = document
        end
      end

      attr_accessor :header
      attr_accessor :data

      def initialize(header = nil, data = nil)
        @header = header
        @data = data
      end
    end

    attr_accessor :header
    attr_accessor :data
    attr_accessor :officialLetter

    def __xmlattr
      @__xmlattr ||= {}
    end

    def xmlattr_Id
      __xmlattr[AttrId]
    end

    def xmlattr_Id=(value)
      __xmlattr[AttrId] = value
    end

    def initialize(header = nil, data = nil, officialLetter = nil)
      @header = header
      @data = data
      @officialLetter = officialLetter
      @__xmlattr = {}
    end
  end

  # inner class for member: Message
  # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Message
  #   senderID - SOAP::SOAPString
  #   recipientID - SOAP::SOAPString
  #   subject - (any)
  #   message - SOAP::SOAPString
  #   partialApplicationID - SOAP::SOAPString
  #   document - MainApplication::Message::Document
  class Message

    # inner class for member: Document
    # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Document
    #   header - MainApplication::Message::Document::Header
    #   data - MainApplication::Message::Document::C_Data
    #   xmlattr_Id - SOAP::SOAPString
    #   xmlattr_ExternalDocument - SOAP::SOAPBoolean
    #   xmlattr_ExternalDocumentId - SOAP::SOAPString
    class Document
      AttrExternalDocument = XSD::QName.new(nil, "ExternalDocument")
      AttrExternalDocumentId = XSD::QName.new(nil, "ExternalDocumentId")
      AttrId = XSD::QName.new(nil, "Id")

      # inner class for member: Header
      # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Header
      #   task - SOAP::SOAPString
      #   note - SOAP::SOAPString
      #   external - MainApplication::Message::Document::Header::External
      #   signature - MainApplication::Message::Document::Header::Signature
      class Header

        # inner class for member: External
        # {http://www.eu-dlr.org/x-eu-dlr.org/V2}External
        #   hashAlgorithm - (any)
        #   hashValue - (any)
        class External
          attr_accessor :hashAlgorithm
          attr_accessor :hashValue

          def initialize(hashAlgorithm = nil, hashValue = nil)
            @hashAlgorithm = hashAlgorithm
            @hashValue = hashValue
          end
        end

        # inner class for member: Signature
        # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Signature
        #   base64Signature - MainApplication::Message::Document::Header::Signature::Base64Signature
        #   signaturePolicyIdentifier - SOAP::SOAPAnyURI
        #   xmlattr_SignatureType - SOAP::SOAPString
        class Signature
          AttrSignatureType = XSD::QName.new(nil, "SignatureType")

          # inner class for member: Base64Signature
          # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Base64Signature
          #   xmlattr_Type - SOAP::SOAPAnyURI
          class Base64Signature < ::String
            AttrType = XSD::QName.new(nil, "Type")

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_Type
              __xmlattr[AttrType]
            end

            def xmlattr_Type=(value)
              __xmlattr[AttrType] = value
            end

            def initialize(*arg)
              super
              @__xmlattr = {}
            end
          end

          attr_accessor :base64Signature
          attr_accessor :signaturePolicyIdentifier

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_SignatureType
            __xmlattr[AttrSignatureType]
          end

          def xmlattr_SignatureType=(value)
            __xmlattr[AttrSignatureType] = value
          end

          def initialize(base64Signature = nil, signaturePolicyIdentifier = nil)
            @base64Signature = base64Signature
            @signaturePolicyIdentifier = signaturePolicyIdentifier
            @__xmlattr = {}
          end
        end

        attr_accessor :task
        attr_accessor :note
        attr_accessor :external
        attr_accessor :signature

        def initialize(task = nil, note = nil, external = nil, signature = nil)
          @task = task
          @note = note
          @external = external
          @signature = signature
        end
      end

      # inner class for member: Data
      # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Data
      #   name - SOAP::SOAPString
      #   filename - SOAP::SOAPString
      #   contentType - SOAP::SOAPString
      #   content - SOAP::SOAPBase64
      #   schemaType - SOAP::SOAPAnyURI
      #   xMLRepresentation - SOAP::SOAPBase64
      class C_Data
        attr_accessor :name
        attr_accessor :filename
        attr_accessor :contentType
        attr_accessor :content
        attr_accessor :schemaType
        attr_accessor :xMLRepresentation

        def initialize(name = nil, filename = nil, contentType = nil, content = nil, schemaType = nil, xMLRepresentation = nil)
          @name = name
          @filename = filename
          @contentType = contentType
          @content = content
          @schemaType = schemaType
          @xMLRepresentation = xMLRepresentation
        end
      end

      attr_accessor :header
      attr_accessor :data

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_Id
        __xmlattr[AttrId]
      end

      def xmlattr_Id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_ExternalDocument
        __xmlattr[AttrExternalDocument]
      end

      def xmlattr_ExternalDocument=(value)
        __xmlattr[AttrExternalDocument] = value
      end

      def xmlattr_ExternalDocumentId
        __xmlattr[AttrExternalDocumentId]
      end

      def xmlattr_ExternalDocumentId=(value)
        __xmlattr[AttrExternalDocumentId] = value
      end

      def initialize(header = nil, data = nil)
        @header = header
        @data = data
        @__xmlattr = {}
      end
    end

    attr_accessor :senderID
    attr_accessor :recipientID
    attr_accessor :subject
    attr_accessor :message
    attr_accessor :partialApplicationID
    attr_accessor :document

    def initialize(senderID = nil, recipientID = nil, subject = nil, message = nil, partialApplicationID = [], document = [])
      @senderID = senderID
      @recipientID = recipientID
      @subject = subject
      @message = message
      @partialApplicationID = partialApplicationID
      @document = document
    end
  end

  # inner class for member: Errors
  # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Errors
  class Errors < ::Array

    # {http://www.eu-dlr.org/x-eu-dlr.org/V2}Error
    #   errorCode - SOAP::SOAPString
    #   errorText - SOAP::SOAPString
    #   objectType - SOAP::SOAPString
    #   objectTypeID - SOAP::SOAPString
    class Error
      attr_accessor :errorCode
      attr_accessor :errorText
      attr_accessor :objectType
      attr_accessor :objectTypeID

      def initialize(errorCode = nil, errorText = nil, objectType = nil, objectTypeID = nil)
        @errorCode = errorCode
        @errorText = errorText
        @objectType = objectType
        @objectTypeID = objectTypeID
      end
    end
  end

  attr_accessor :action
  attr_accessor :header
  attr_accessor :data
  attr_accessor :partner
  attr_accessor :document
  attr_accessor :partialApplication
  attr_accessor :message
  attr_accessor :errors

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_Id
    __xmlattr[AttrId]
  end

  def xmlattr_Id=(value)
    __xmlattr[AttrId] = value
  end

  def initialize(action = nil, header = nil, data = nil, partner = [], document = [], partialApplication = [], message = [], errors = nil)
    @action = action
    @header = header
    @data = data
    @partner = partner
    @document = document
    @partialApplication = partialApplication
    @message = message
    @errors = errors
    @__xmlattr = {}
  end
end
