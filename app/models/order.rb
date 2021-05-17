# frozen_string_literal: true

class Order < ApplicationRecord
  has_one :customer
  has_one :address
  has_many :items
  has_many :payments

  validates :external_code, :store_id, :sub_total, :delivery_fee,
            :total, :dt_order_create, :postal_code, :number,
            :total_shipping, presence: true
end
