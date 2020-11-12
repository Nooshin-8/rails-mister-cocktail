class Dose < ApplicationRecord

  # A dose belongs to an ingredient
  # A dose belongs to a cocktail

  belongs_to :cocktail
  belongs_to :ingredient

  # validates :description, presence: true
  # A dose must have a description, a cocktail and an ingredient,
  # and [cocktail, ingredient] pairings should be unique.

  validates :ingredient, uniqueness: {scope: :cocktail}
  validates :description, presence: true
end
