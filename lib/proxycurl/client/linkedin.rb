module Proxycurl
  class Client

    module Linkedin

      def linkedin(options = {})
        response = self.class.get("/linkedin", { query: options })
        response.parsed_response
      end

    end

  end
end
