module Parse
  class Item
    def run(params)
     make_parse(params)
    end
    
    private
    
    def make_parse(params)
      items(params)
    end
  
    def items(params)
      params.map do |index|
        {
          external_code: index[:item][:id],
          name: index[:item][:title],
          price: index[:unit_price],
          quantity: index[:quantity],
          total: index[:full_unit_price],
        }
      end
    end
    
  end
end