module Parse
  class Main
    def run(params)
     make_parse(params)
    end

    private

    def make_parse(params)
      {
        externalCode: params[:id].to_s,
        storeId: params[:store_id].to_s,
        subTotal: params[:total_amount].to_s,
        deliveryFee: params[:total_shipping].to_s,
        total: params[:total_amount_with_shipping].to_s,
        dtOrderCreate: params[:date_created].to_s,
        postalCode: params[:shipping][:receiver_address][:zip_code],
        number: params[:shipping][:receiver_address][:street_number],
        total_shipping: params[:total_shipping],
        address: Address.new.run(params[:shipping][:receiver_address]),
        customer: Customer.new.run(params[:buyer]),
        items: Item.new.run(params[:order_items]),
        payments: Payment.new.run(params[:payments])
      }
    end
    
  end
end
