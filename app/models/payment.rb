# frozen_string_literal: true

class Payment < ApplicationRecord
  validates :modality, :value, presence: true
end
