module Create
  class Payment
    def run(params)
      create(params)
    end
  
  private
  
    def create(params)
      params[:payments].map do |item|
        ::Payment.find_or_create_by!(make_payment(item))
      end
      
    end
  
    def make_payment(params)
      {
        modality: params[:type],
        value: params[:value]
      }
    end
  end
end