class CreateDesserts < ActiveRecord::Migration[6.0]
  def change
    create_table :desserts do |t|

      t.string :name
      t.string :ingredients
      t.string :picture
      t.integer :likes
      t.string :category

      t.timestamps
    end
  end
end
