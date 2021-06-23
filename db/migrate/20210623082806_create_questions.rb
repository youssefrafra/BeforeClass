class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :category
      t.integer :order

      t.timestamps
    end
  end
end
