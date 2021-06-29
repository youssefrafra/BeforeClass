class AddCoordinatesToDevSchools < ActiveRecord::Migration[6.1]
  def change
    add_column :dev_schools, :latitude, :float
    add_column :dev_schools, :longitude, :float
  end
end
