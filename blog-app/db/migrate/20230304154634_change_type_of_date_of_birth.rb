class ChangeTypeOfDateOfBirth < ActiveRecord::Migration[7.0]
  def up
    change_column :users, :date_of_birth, :datetime
  end
  def down
    change_column :users, :date_of_birth, :date
  end
end
