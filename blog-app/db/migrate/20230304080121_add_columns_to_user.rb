class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :plan_start_date, :date
    add_column :users, :plan_end_date, :date
    add_column :users, :dob, :date
    add_column :users, :age, :integer
  end
end
