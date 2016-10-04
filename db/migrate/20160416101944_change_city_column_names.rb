class ChangeCityColumnNames < ActiveRecord::Migration
  def change
    rename_column :cities, :distric_name, :city_name
  end
end
