class CreateGuestDesks < ActiveRecord::Migration[7.0]
  def change
    create_table :guest_desks do |t|
      t.references :desk, null: false, foreign_key: true
      t.references :guest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
