class CreateSpouses < ActiveRecord::Migration[7.0]
  def change
    create_table :spouses do |t|
      t.string :last_name
      t.string :first_name
      t.string :gender
      t.references :wedding, null: false, foreign_key: true

      t.timestamps
    end
  end
end
