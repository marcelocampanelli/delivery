# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Payment, type: :model do
  payment = Payment.new(
    id: 1,
    modality: 'CREDIT_CARD',
    value: 55.04
  )
  context 'Create a address' do
    it 'is valid' do
      expect(payment).to be_valid
    end

    it 'is valid without modality' do
      payment.modality = nil
      expect(payment).to_not be_valid
    end

    it 'is valid without value' do
      payment.value = nil
      expect(payment).to_not be_valid
    end
  end
end
