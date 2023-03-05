class RenameDobFromUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :dob, :date_of_birth
  end
end
