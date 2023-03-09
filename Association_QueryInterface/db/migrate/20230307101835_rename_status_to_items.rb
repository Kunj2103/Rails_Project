class RenameStatusToItems < ActiveRecord::Migration[7.0]
  def change
    rename_column :items, :statusL, :status
  end
end
