module Parse
  class Address
    def run(params)
     make_parse(params)
    end
    
    private
    
    def make_parse(params)
     address(params)
    end
    
    def address(params)
      {
        country: params[:country][:id],
        state: params[:state][:id],
        city: params[:city][:name],
        district: params[:neighborhood][:name],
        street: params[:street_name],
        complement: params[:comment],
        latitude: params[:latitude],
        longitude: params[:longitude]
      }
    end

  
  end
end