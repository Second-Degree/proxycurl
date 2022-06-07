require "proxycurl/client/linkedin"

module Proxycurl

  class Client
    include HTTParty
    include Proxycurl::Client::Linkedin
    base_uri "https://nubela.co/proxycurl/api/v2"
    format :json

    def initialize(access_token = nil)
      access_token ||= ENV["GROOVEHQ_ACCESS_TOKEN"]
      self.class.default_options.merge!(headers: { 'Authorization' => "Bearer #{access_token}" })
    end

  end
end
