class AddCategoryToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :category, :string
  end
end
