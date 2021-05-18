require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'Create a address' do
    it 'is valid' do
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
      expect(address).to be_valid
    end

    it 'is valid' do
      address = Address.new(
        country: '',
        state: '',
        city: '',
        district: 'Vila de Testes',
        street: 'Rua de Testes Fake',
        complement: 'galpao',
        latitude: -23.629037,
        longitude: -46.712689
      )
      expect(address).to_not be_valid
    end
  end
end
