class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :color
      t.string :company_name
      t.float :price
      t.integer :rating

      t.timestamps
    end
  end
end
