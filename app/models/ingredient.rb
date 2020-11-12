class Ingredient < ApplicationRecord

  # An ingredient has many doses

  has_many :doses

  # validates :name, presence: true
  # An ingredient must have a unique name.

  validates :name, presence: true, uniqueness: true

  # You can’t delete an ingredient if it is used by
  # at least one cocktail.
end
