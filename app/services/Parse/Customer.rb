module Parse
  class Customer
    def run(params)
     make_parse(params)
    end
    
    private
    
    def make_parse(params)
      customer(params)
    end
  
    def customer(params)
      {
        externalCode: params[:id].to_s,
        name: params[:nickname],
        email: params[:email],
        contact: "#{params[:phone][:area_code]}#{params[:phone][:number]}"
      }
    end
  end
end