module WorkOrder
  class GetToken
    def run
      make
    end

    private

    def make
      require 'uri'
      require 'net/http'
      require 'json'
      url = URI('https://recruitment-api.deliverycenter.com/auth/get_token')
      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true
      request = Net::HTTP::Get.new(url)
      response = https.request(request)
      response.read_body[10, 46]
    end
  end
end
