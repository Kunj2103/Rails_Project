class Modifier < ApplicationRecord
  has_many :item_modifiers
  has_many :items, through: :item_modifiers
  has_one :rating, as: :rateable

  default_scope { order("price desc") }
end
