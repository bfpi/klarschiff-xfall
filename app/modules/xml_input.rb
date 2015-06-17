module XmlInput

  def self.new(xml)

    #xml = Nokogiri.parse xmlString
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
    obj
  end
end