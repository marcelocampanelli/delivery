module Create
  class Customer
    def run(params)
      create(params)
    end
  
  private
  
    def create(params)
      ::Customer.find_or_create_by!(make_customer(params[:customer]))
    end
  
    def make_customer(params)
      {
        external_code: params[:externalCode],
        name: params[:name],
        email: params[:email],
        contact: params[:contact]
      }
    end
  end
end