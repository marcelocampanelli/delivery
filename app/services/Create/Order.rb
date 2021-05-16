module Create
  class Order
    def run(params)
      make(params)
    end
    
    
    private 
      def make(params)
        address  = Create::Address.new.run(params)
        customer = Create::Customer.new.run(params)
        item     = Create::Item.new.run(params)
        payment  = Create::Payment.new.run(params)
        ::Order.find_or_create_by!(make_order(
                                      params, address,
                                      customer, item, payment
                                      )
                                    )
      end
      
      def make_order(params, address, customer, item, payment)
        {
          external_code: params[:externalCode],
          store_id: params[:storeId],
          sub_total: params[:subTotal],
          delivery_fee: params[:deliveryFee],
          total: params[:total],
          dt_order_create: params[:dtOrderCreate],
          postal_code: params[:postalCode],
          number: params[:number],
          total_shipping: params[:total_shipping],
          address_id: address.id,
          customers_id: customer.id,
          items_id: item.first[:id],
          payments_id: payment.first[:id]
        }
      end
    
  end
end