class CreateRockets < ActiveRecord::Migration[6.1]
  def change
    create_table :rockets do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :capacity
      t.integer :range
      t.integer :power
      t.boolean :is_available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
