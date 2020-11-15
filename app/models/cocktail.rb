class Cocktail < ApplicationRecord

  has_many_attached :photos

  # A cocktail has many doses
  # A cocktail has many ingredients through doses
  # When you delete a cocktail, you should delete associated doses
  # (but not the ingredients as they can be linked to other cocktails).
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  # A cocktail must have a unique name.
  validates :name, presence: true, uniqueness: true
end
