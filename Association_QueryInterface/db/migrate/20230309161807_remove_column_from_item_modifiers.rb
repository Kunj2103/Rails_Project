class RemoveColumnFromItemModifiers < ActiveRecord::Migration[7.0]
  def change
    remove_column :item_modifiers, :status
  end
end
