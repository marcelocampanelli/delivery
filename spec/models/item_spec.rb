# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item, type: :model do
  item = Item.new(
    id: 1,
    external_code: '123123123',
    name: 'product test',
    price: 494.0,
    total: 50,
    quantity: 1
  )
  context 'Create a item' do
    it 'is valid' do
      expect(item).to be_valid
    end

    it 'is invalid without external_code' do
      item.external_code = nil
      expect(item).to_not be_valid
    end

    it 'is invalid without name' do
      item.name = nil
      expect(item).to_not be_valid
    end

    it 'is invalid without price' do
      item.price = nil
      expect(item).to_not be_valid
    end

    it 'is invalid without total' do
      item.total = nil
      expect(item).to_not be_valid
    end

    it 'is invalid without quantity' do
      item.quantity = nil
      expect(item).to_not be_valid
    end
  end
end
