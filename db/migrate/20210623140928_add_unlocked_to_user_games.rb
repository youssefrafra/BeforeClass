class AddUnlockedToUserGames < ActiveRecord::Migration[6.1]
  def change
    add_column :user_games, :unlocked, :boolean, default: false
  end
end
