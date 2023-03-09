class AddStockQuantityToModifier < ActiveRecord::Migration[7.0]
  def change
    add_column :modifiers, :stock_quantity, :integer

  end
end
