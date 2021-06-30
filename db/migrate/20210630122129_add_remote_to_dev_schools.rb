class AddRemoteToDevSchools < ActiveRecord::Migration[6.1]
  def change
    add_column :dev_schools, :remote, :boolean
  end
end
