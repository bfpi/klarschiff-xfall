class Request < MainApplication
  include ActiveModel::Model

  def data
    @data = Request::C_Data.new if @data.nil?
    @data
  end

  def betreff=(value)
    data.name = value
  end

  def details=(value)
    data.description = value
  end

  def backend_params
    {
      betreff: data.name,
      details: data.description
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

end