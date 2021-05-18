require 'rails_helper'

RSpec.describe Address, type: :model do
  address = Address.new(
    country: 'BR',
    state: 'SP',
    city: 'Cidade de Testes',
    district: 'Vila de Testes',
    street: 'Rua de Testes Fake',
    complement: 'galpao',
    latitude: -23.629037,
    longitude: -46.712689
  )
  context 'Create a address' do
    it 'is valid' do
      expect(address).to be_valid
    end

    it 'is not valid without a coutry' do
      address.country = nil
      expect(address).to_not be_valid
    end

    it 'is not valid without a state' do
      address.state = nil
      expect(address).to_not be_valid
    end

    it 'is not valid without a city' do
      address.city = nil
      expect(address).to_not be_valid
    end

    it 'is not valid without a district' do
      address.district = nil
      expect(address).to_not be_valid
    end

    it 'is not valid without a street' do
      address.street = nil
      expect(address).to_not be_valid
    end

    it 'is not valid without a complement' do
      address.complement = nil
      expect(address).to_not be_valid
    end

    it 'is not valid without a latitude' do
      address.latitude = nil
      expect(address).to_not be_valid
    end

    it 'is not valid without a longitude' do
      address.longitude = nil
      expect(address).to_not be_valid
    end
  end
end
