class AddCompletedToUserGames < ActiveRecord::Migration[6.1]
  def change
    add_column :user_games, :completed, :boolean, default: false
  end
end
