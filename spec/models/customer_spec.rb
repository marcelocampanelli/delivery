# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Customer, type: :model do
  context 'Create a customer' do
    it 'is valid' do
      customer = Customer.new(
        id: 1,
        name: 'JOHN DOE',
        email: 'john@doe.com',
        contact: '41999999999',
        external_code: '123123123'
      )
      expect(customer).to be_valid
    end

    it 'is invalid' do
      customer = Customer.new(
        name: 'JOHN DOE',
        email: '',
        contact: '41999999999'
      )
      expect(customer).to_not be_valid
    end
  end
end
