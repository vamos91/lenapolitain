class Review < ApplicationRecord
  belongs_to :croisiere

  validates :description, presence: true
  validates :rating, presence: true
  validates :nom, presence: true
end
