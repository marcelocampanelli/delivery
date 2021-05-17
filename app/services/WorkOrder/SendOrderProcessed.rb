module WorkOrder
  class SendOrderProcessed
    def run(token, parse)
      make(token, parse)
    end

    private

    def make(token, parse)
      @authentication_token = token
      @time = Time.zone.now.strftime('%Hh%M - %d/%m/%y')
      request(parse)
    end

    def request(payload)
      url = URI('https://recruitment-api.deliverycenter.com/api/v2/order')
      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(url)
      request['Authorization'] = @authentication_token
      request['Content-Type'] = 'application/json'
      request['X-Sent'] = Time.zone.now.strftime('%Hh%M - %d/%m/%y')
      request.body = payload.to_json
      response = https.request(request)
      response.read_body
    end
  end
end
