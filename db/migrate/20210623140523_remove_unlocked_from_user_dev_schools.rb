class RemoveUnlockedFromUserDevSchools < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_dev_schools, :unlocked, :boolean
  end
end
