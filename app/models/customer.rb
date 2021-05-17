# frozen_string_literal: true

class Customer < ApplicationRecord
  has_one :orders
  validates :external_code, :name, :email, :contact, presence: true
end
