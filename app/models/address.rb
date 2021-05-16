class Address < ApplicationRecord
  validates :country, :state, :city, :district,
              :street, :complement, :latitude,
              :longitude,presence: true
  
end
