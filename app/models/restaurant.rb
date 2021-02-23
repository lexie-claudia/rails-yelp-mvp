class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  CATEGORY = %w(chinese italian japanese french belgian)
  validates :category, inclusion: { in: CATEGORY }
  has_many :reviews, dependent: :destroy
end

