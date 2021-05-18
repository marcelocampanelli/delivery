# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Customer, type: :model do
  customer = Customer.new(
    id: 1,
    name: 'JOHN DOE',
    email: 'john@doe.com',
    contact: '41999999999',
    external_code: '123123123'
  )
  context 'Create a customer' do
    it 'is valid' do
      expect(customer).to be_valid
    end

    it 'is invalid without name' do
      customer.name = nil
      expect(customer).to_not be_valid
    end

    it 'is invalid without email' do
      customer.email = nil
      expect(customer).to_not be_valid
    end

    it 'is invalid without contact' do
      customer.contact = nil
      expect(customer).to_not be_valid
    end

    it 'is invalid without external_code' do
      customer.external_code = nil
      expect(customer).to_not be_valid
    end
  end
end
