class Rating < ApplicationRecord
  belongs_to :rateable, polymorphic: true
  validates :ratings, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

  default_scope {
    order("ratings ASC")
  }
  scope :good_rating, -> {
          where(:ratings >= 4)
        }
  scope :average_rating, -> {
          where(:ratings < 4)
        }
end
