class AddOrderToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :order, :integer
  end
end
