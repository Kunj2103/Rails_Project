class Category < ApplicationRecord
  has_many :items
  has_one :rating, as: :rateable

  default_scope { order("name desc") }
  scope :active_inactive, -> {
          where(:status => active || inactive)
        }
end
