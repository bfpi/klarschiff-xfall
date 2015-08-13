class InterfaceController < ApplicationController

  require 'nokogiri'

  def index
    return render text: "Kein XML übergeben" if request.raw_post.blank?

    begin
      xmlContent =  Nokogiri::XML::Document.parse(request.raw_post)

      schema = Nokogiri::XML::Schema(File.read("app/xsd/x_fall-2.0.xsd"))
      return render :text => "XML entspricht nicht der XSD" unless schema.valid?(xmlContent)
    rescue Exception => e
      p e.inspect
      return render :text => "XML invalid"
    end

    request = XmlInput.new(xmlContent)

    # Uebermittlung eines Falls
    if request.action == "PARTIALAPPLICATION" && request.header.task == "I"
      resp = KSBackend.create_request(request.backend_create_params)
      return redirect_to action: :show, id: resp.id
    end

    return render xml: XmlOutput.new(request)
  end

  def show
    request = KSBackend.request(params[:id])

    request.action = "PARTIALAPPLICATION"
    output = XmlOutput.new(request)

    return render xml: output
  end

end