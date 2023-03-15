class AddReferenceToAdmin < ActiveRecord::Migration[7.0]
  def change
    add_reference :admins, :user, foreign_key: true
  end
end
