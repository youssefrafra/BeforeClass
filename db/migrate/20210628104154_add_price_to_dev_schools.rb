class AddPriceToDevSchools < ActiveRecord::Migration[6.1]
  def change
    add_column :dev_schools, :price, :string
  end
end
