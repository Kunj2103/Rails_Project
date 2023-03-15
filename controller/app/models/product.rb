class Product < ApplicationRecord
  # belongs_to :user
  # scope :search, ->(search) { where("name like ?", "#{search}%") }

  def self.search(search)
    products = where("name like ?", "#{search}%")
    products.present? ? products : all
  end
end
