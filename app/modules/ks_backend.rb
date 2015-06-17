module KSBackend
  require 'net/http'

  def self.request(id)
    self.get("vorgaenge", { id: id }, Request).first
  end

  def self.create_request(parameter)
    self.post "vorgang", parameter, Request, true
  end

  private
  def self.get(be_method, params, response_class, only_one = false)
    uri = URI("#{ Settings::Url.ks_backend_url }#{ be_method }")
    uri.query = URI.encode_www_form(params) unless params.blank?

    begin
      res = Net::HTTP.get_response(uri)
    rescue Exception => ex
      raise ex
    end
    self.handle_response res.body, response_class, only_one
  end

  def self.post(be_method, params, response_class, only_one = false)
    uri = URI("#{ Settings::Url.ks_backend_url }#{ be_method }")

    begin
      res = Net::HTTP.post_form(uri, params)
    rescue Exception => ex
      raise ex
    end
    self.handle_response res.body, response_class, only_one
  end

  def self.handle_response(response, response_class, only_one)
    begin
      return response_class.new(JSON.parse(response)) if only_one

      JSON.parse(response).map do |elem|
        if elem
          obj = response_class.new
          obj.update_attributes(elem)
          obj
        end
      end
    rescue Exception => ex
      raise ex
    end
  end
end