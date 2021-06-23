class AddShortDescriptionToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :short_description, :text
  end
end
