class RemoveDescriptionFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :description, :string
  end
end
