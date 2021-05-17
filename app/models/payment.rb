# frozen_string_literal: true

class Payment < ApplicationRecord
  has_one :orders

  validates :modality, :value, presence: true
end
