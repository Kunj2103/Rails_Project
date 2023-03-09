class ChangeTypeInRating < ActiveRecord::Migration[7.0]
  def change
    change_column :ratings, :rateable_id, :integer
  end
end
