class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :password
      t.string :email
      t.integer :phone_number
      t.integer :zip_code

      t.timestamps
    end
  end
end
