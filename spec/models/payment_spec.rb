# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Payment, type: :model do
  context 'Create a address' do
    it 'is valid' do
      payment = Payment.new(
        id: 1,
        modality: 'CREDIT_CARD',
        value: 55.04
      )
      expect(payment).to be_valid
    end

    it 'is valid' do
      payment = Payment.new(
        id: 1,
        modality: 'CREDIT_CARD',
        value: ''
      )
      expect(payment).to_not be_valid
    end
  end
end
