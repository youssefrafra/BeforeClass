class RemoveCompletedFromUserGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_games, :completed, :boolean
  end
end
