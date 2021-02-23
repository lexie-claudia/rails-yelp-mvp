class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  RATING = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATING }
  # how to validate if attribute is an integer? use: numericality
  validates :rating, numericality: { only_integer: true }
end
