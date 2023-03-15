class Product < ApplicationRecord
  # belongs_to :user
  def self.search(search)
    if search
      product_name = Product.where("name like ?", "#{search}%")
      p product_name
      if product_name
        Product.where(id: product_name.ids)
      else
        @products = Product.all
      end
    else
      @products = Product.all
    end
  end
end
