class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian].freeze

  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates :phone_number, presence: true
end
