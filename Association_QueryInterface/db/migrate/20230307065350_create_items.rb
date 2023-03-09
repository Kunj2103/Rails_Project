class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.integer :stock_quantity
      t.boolean :statusL

      t.timestamps
    end
  end
end
