class RemoveIngredientsFromDesserts < ActiveRecord::Migration[6.0]
  def change
    remove_column :desserts, :ingredients, :string
  end
end
