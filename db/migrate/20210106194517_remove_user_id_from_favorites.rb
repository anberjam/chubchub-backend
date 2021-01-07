class RemoveUserIdFromFavorites < ActiveRecord::Migration[6.0]
  def change
    remove_column :favorites, :user_id, :integer
  end
end
