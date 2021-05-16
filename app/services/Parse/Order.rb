module Parse
  class Order
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
        address: address(params[:shipping][:receiver_address]),
        customer: customer(params[:buyer]),
        items: items(params[:order_items]),
        payments: payment(params[:payments])
      }
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

    def customer(params)
      {
        externalCode: params[:id].to_s,
        name: params[:nickname],
        email: params[:email],
        contact: "#{params[:phone][:area_code]}#{params[:phone][:number]}"
      }
    end

    def items(params)
      params.map do |index|
        {
          externalCode: index[:item][:id],
          name: index[:item][:title],
          price: index[:unit_price],
          quantity: index[:quantity],
          total: index[:full_unit_price],
          subItems: []

        }
      end
    end

    def payment(params)
      params.map do |item|
        {
          type: item[:payment_type].upcase,
          value: item[:total_paid_amount]
        }
      end
    end

    def shipping; end
  end
end
