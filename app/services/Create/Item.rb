module Create
  class Item
    def run(params)
      create(params)
    end
  
  private
  
    def create(params)
      params[:items].map do |item|
       ::Item.find_or_create_by!(make_items(item))
      end
    end
  
    def make_items(params)
      {
        external_code: params[:externalCode],
        name: params[:name],
        price: params[:price],
        quantity: params[:quantity],
        total: params[:total]
      }
    end
  end
end

