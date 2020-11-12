class Ingredient < ApplicationRecord

  has_many :doses

  # validates :name, presence: true
  # An ingredient must have a unique name.

  validates :name, presence: true, uniqueness: true
end
