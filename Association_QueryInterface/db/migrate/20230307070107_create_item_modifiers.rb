class CreateItemModifiers < ActiveRecord::Migration[7.0]
  def change
    create_table :item_modifiers do |t|
      t.boolean :status

      t.timestamps
    end
  end
end
