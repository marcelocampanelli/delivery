# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item, type: :model do
  context 'Create a item' do
    it 'is valid' do
      item = Item.new(
        id: 1,
        external_code: '123123123',
        name: 'product test',
        price: 494.0,
        total: 50,
        quantity: 1
      )
      expect(item).to be_valid
    end

    it 'is invalid' do
      item = Item.new(
        external_code: '123123123',
        name: '',
        price: 494.0,
        quantity: 1
      )
      expect(item).to_not be_valid
    end
  end
end
