module Parse
  class Payment
    def run(params)
     make_parse(params)
    end
    
    private
    
    def make_parse(params)
      payment(params)
    end
  
    def payment(params)
      params.map do |item|
        {
          type: item[:payment_type].upcase,
          value: item[:total_paid_amount]
        }
      end
    end
  end
end