# frozen_string_literal: true

class Item < ApplicationRecord
  has_one :orders
  
  validates :external_code, :name, :price, :quantity, :total, presence: true
end
