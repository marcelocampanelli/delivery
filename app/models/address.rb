class Address < ApplicationRecord
  has_one :orders

  validates :country, :state, :city, :district,
            :street, :complement, :latitude,
            :longitude, presence: true
end
