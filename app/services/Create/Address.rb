module Create
  class Address
    def run(params)
      create(params)
    end
  
  private
  
    def create(params)
      ::Address.find_or_create_by!(make_address(params[:address]))
    end
  
    def make_address(params)
      {
        country: params[:country],
        state: params[:state],
        city: params[:city],
        district: params[:district],
        street: params[:street],
        complement: params[:complement],
        latitude: params[:latitude],
        longitude: params[:longitude],
      }
    end
  end
end