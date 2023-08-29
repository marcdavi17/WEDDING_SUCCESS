class CreateWeddings < ActiveRecord::Migration[7.0]
  def change
    create_table :weddings do |t|
      t.date :day
      t.string :city_hall

      t.timestamps
    end
  end
end
