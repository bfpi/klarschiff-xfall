require 'xsd/qname'

# {}CustomData
#   type - SOAP::SOAPString
#   category - SOAP::SOAPByte
#   latitude - SOAP::SOAPFloat
#   longitude - SOAP::SOAPFloat
class CustomData
  attr_accessor :type
  attr_accessor :category
  attr_accessor :latitude
  attr_accessor :longitude

  def initialize(type = nil, category = nil, latitude = nil, longitude = nil)
    @type = type
    @category = category
    @latitude = latitude
    @longitude = longitude
  end
end
