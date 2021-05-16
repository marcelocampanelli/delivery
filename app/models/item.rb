# frozen_string_literal: true

class Item < ApplicationRecord
  validates :external_code, :name, :price, :quantity, :total, presence: true
end
