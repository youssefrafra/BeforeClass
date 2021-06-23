class CreateDevSchools < ActiveRecord::Migration[6.1]
  def change
    create_table :dev_schools do |t|
      t.string :name
      t.string :address
      t.string :duration
      t.text :description
      t.boolean :payment_facilities
      t.boolean :certifying
      t.string :category
      t.string :url
      t.integer :score_to_unlock

      t.timestamps
    end
  end
end
