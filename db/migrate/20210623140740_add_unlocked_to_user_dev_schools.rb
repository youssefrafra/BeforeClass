class AddUnlockedToUserDevSchools < ActiveRecord::Migration[6.1]
  def change
    add_column :user_dev_schools, :unlocked, :boolean, default: false
  end
end
