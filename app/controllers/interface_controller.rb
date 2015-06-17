class InterfaceController < ApplicationController

  require 'nokogiri'

  def index
    xmlContent = Nokogiri.parse File.read("tmp/Fall-Insert.xml")

    schema = Nokogiri::XML::Schema(File.read("tmp/xFall2.0.xsd"))
    return render :text => "XML invalid" unless schema.valid?(xmlContent)

    request = XmlInput.new(xmlContent)

    # Es werden bei PARTIALAPPLICATION ebenfalls folgende Elemente ausgewertet:
    #   Task
    #   PartialApplication
    #   Partner
    #   Documents

    # Uebermittlung eines Falls inklusive 1 bis n Antraegen.
    if request.action == "PARTIALAPPLICATION" && request.header.task == "I"
      p request.backend_params
      KSBackend.create_request(request.backend_params)
    end




    return render xml: XmlOutput.new(request)
  end

  def show
    request = KSBackend.request(params[:id])

    p request.inspect

    request.action = "MESSAGE"
    output = XmlOutput.new(request)

    return render xml: output
  end

end