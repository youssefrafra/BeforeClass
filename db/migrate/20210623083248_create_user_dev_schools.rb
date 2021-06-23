class CreateUserDevSchools < ActiveRecord::Migration[6.1]
  def change
    create_table :user_dev_schools do |t|
      t.references :user, null: false, foreign_key: true
      t.references :dev_school, null: false, foreign_key: true
      t.boolean :unlocked

      t.timestamps
    end
  end
end
