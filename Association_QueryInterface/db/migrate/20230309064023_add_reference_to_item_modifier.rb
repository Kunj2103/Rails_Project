class AddReferenceToItemModifier < ActiveRecord::Migration[7.0]
  def change
    add_reference :item_modifiers, :item, foreign_key: true
    add_reference :item_modifiers, :modifier, foreign_key: true
  end
end
