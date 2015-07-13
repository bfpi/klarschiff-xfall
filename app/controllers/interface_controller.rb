class InterfaceController < ApplicationController

  require 'nokogiri'

  def index
    xmlContent = Nokogiri.parse File.read("tmp/Fall-Insert.xml")

    schema = Nokogiri::XML::Schema(File.read("app/xsd/x_fall-2.0.xsd"))
    return render :text => "XML invalid" unless schema.valid?(xmlContent)

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