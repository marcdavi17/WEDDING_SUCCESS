class CreateGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :guests do |t|
      t.string :last_name
      t.string :first_name
      t.string :gender
      t.integer :age_category
      t.boolean :witness
      t.integer :status
      t.references :family, null: false, foreign_key: true
      t.references :spouse, null: false, foreign_key: true

      t.timestamps
    end
  end
end
