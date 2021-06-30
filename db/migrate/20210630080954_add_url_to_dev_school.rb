class AddUrlToDevSchool < ActiveRecord::Migration[6.1]
  def change
    add_column :dev_schools, :url_photo, :string
  end
end
