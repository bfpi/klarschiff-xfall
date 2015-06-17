module XmlOutput

  def self.new(obj)
    attributes = {
      "xmlns:oraxsl": "http://www.oracle.com/XSL/Transform/java",
      "xmlns:oracle-xsl-mapper": "http://www.oracle.com/xsl/mapper/schemas",
      "xmlns:ns3": "http://www.eu-dlr.org/x-eu-dlr.org/V2",
      "xmlns:xsi": "http://www.w3.org/2001/XMLSchema-instance",
      "xsi:schemaLocation": "http://www.eu-dlr.org/x-eu-dlr.org/V2 xFall2.0.xsd"
    }

    attributes.merge! getAttributes(obj)

    Nokogiri::XML::Builder.new do |xml|
      xml['ns3'].MainApplication(attributes) do |ma|
        writeChildren xml, obj
      end
    end
  end

  private
  def self.writeChildren(xml, obj)
    obj.instance_values.each do |name, value|
      unless value.blank? || name.starts_with?("_")
        if value.is_a? String
          xml.send(name.camelize, value)
        elsif value.is_a? Array
          value.each do |el|
            xml.send(name.camelize, getAttributes(el)) do
              writeChildren xml, el
            end
          end
        else
          xml.send(name.camelize, getAttributes(value)) do
            writeChildren xml, value
          end
        end
      end
    end
  end

  def self.getAttributes(element)
    return nil unless element.try(:__xmlattr)
    attrs = {}
    element.__xmlattr.each do |k, attr|
      attrs[attr.name] = attr.value
    end
    attrs
  end
end