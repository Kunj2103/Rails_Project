class RemoveColumnFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :age, :integer
  end
end
