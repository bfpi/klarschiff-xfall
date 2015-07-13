module XmlInput

  def self.new(xml)
    request = Request.new

    readChildren(xml.elements.first, request, "Request")
    request
  end

  private
  def self.readChildren(xml, obj, className)
    xml.attributes.each do |attrKey, attrValue|
      obj.send("xmlattr_#{ attrKey }=", attrValue)
    end

    xml.elements.each do |elem|
      if elem.name == "CustomData"
        customData = Nokogiri.parse Base64.decode64(elem.text)

        schema = Nokogiri::XML::Schema(File.read("app/xsd/custom_data.xsd"))
        raise "CustomData XML invalid" unless schema.valid?(customData)

        value = CustomData.new
        readChildren(customData.elements.first, value, "CustomData")

        obj.send("#{ elem.name.camelize(:lower) }=", value)
      else
        elemName = elem.name == "Data" ? "C_Data" : elem.name
        value = nil

        if elem.elements.blank? && elem.attributes.blank?
          value = elem.text
        else
          cObj = "#{ className }::#{ elemName }".constantize.new
          self.readChildren(elem, cObj, "#{ className }::#{ elemName }")
          value = cObj
        end
        varName = elem.name.camelize(:lower)

        if obj.send("#{ varName }").is_a?(Array) && !value.is_a?(String)
          arr = obj.send("#{ varName }")
          arr << value
          obj.send("#{ varName }=", arr)
        else
          obj.send("#{ varName }=", value)
        end
      end
    end
    obj
  end
end