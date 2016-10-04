class ChangeManufacturerCityColumnName < ActiveRecord::Migration
  def change
    rename_column :manufacturers, :city, :city_id
  end
end
