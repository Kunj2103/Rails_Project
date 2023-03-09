class Item < ApplicationRecord
  has_many :item_modifiers
  has_many :modifiers, through: :item_modifiers
  belongs_to :category, optional: true
  has_one :rating, as: :rateable

  default_scope { order("stock_quantity desc") }
  scope :active_inactive, -> {
          where(:status => active || inactive)
        }
end
