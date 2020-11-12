class Cocktail < ApplicationRecord

  has_many :doses, dependent: :destroy
  has_many :ingredients

  # A cocktail must have a unique name.
  validates :name, presence: true, uniqueness: true
  validates :picture, presence: true, uniqueness: true

end
