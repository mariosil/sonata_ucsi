class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :company
      t.string :model
      t.integer :year
      t.boolean :is_new
      t.float :price
      t.references :dealership, foreign_key: true

      t.timestamps
    end
  end
end
