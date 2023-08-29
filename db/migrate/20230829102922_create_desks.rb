class CreateDesks < ActiveRecord::Migration[7.0]
  def change
    create_table :desks do |t|
      t.string :name
      t.integer :capacity
      t.string :shape
      t.references :wedding, null: false, foreign_key: true

      t.timestamps
    end
  end
end
