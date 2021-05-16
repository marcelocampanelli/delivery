# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :external_code, :name, :email, :contact, presence: true
end
