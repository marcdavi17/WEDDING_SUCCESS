class ChangeNullValueOfFamilySpouse < ActiveRecord::Migration[7.0]
  def change
    change_column_null :guests, :spouse_id, true
  end
end
