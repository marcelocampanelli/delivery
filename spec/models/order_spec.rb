# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'Create a order' do
    it 'is valid' do
      address = Address.new(
        id: 1,
        country: 'BR',
        state: 'SP',
        city: 'Cidade de Testes',
        district: 'Vila de Testes',
        street: 'Rua de Testes Fake',
        complement: 'galpao',
        latitude: -23.629037,
        longitude: -46.712689
      )

      customer = Customer.new(
        id: 1,
        name: 'JOHN DOE',
        email: 'john@doe.com',
        contact: '41999999999',
        external_code: '123123123'
      )

      item = Item.new(
        id: 1,
        external_code: '123123123',
        name: 'product test',
        price: 494.0,
        total: 50,
        quantity: 1
      )

      payment = Payment.new(
        id: 1,
        modality: 'CREDIT_CARD',
        value: 55.04
      )

      order = Order.new(
        id: 1,
        external_code: '9987071',
        store_id: 282,
        sub_total: '49.90',
        delivery_fee: '5.14',
        total: '55.04',
        dt_order_create: '2019-06-24T16:45:32.000-04:00',
        postal_code: '85045020',
        number: '3454',
        total_shipping: 5.14,
        address_id: address.id,
        customers_id: customer.id,
        items_id: item.id,
        payments_id: payment.id
      )
      expect(order).to be_valid
    end

    # it 'is invalid' do
    #   order = Order.new(
    #     external_code: '123123123',
    #     name: '',
    #     price: 494.0,
    #     quantity: 1
    #   )
    #   expect(order).to_not be_valid
    # end
  end
end
