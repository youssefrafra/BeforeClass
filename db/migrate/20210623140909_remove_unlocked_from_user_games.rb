class RemoveUnlockedFromUserGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_games, :unlocked, :boolean
  end
end
