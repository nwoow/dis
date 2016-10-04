class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :distric_name
      t.string :district_code
      t.string :state_HASC_code
      t.string :country_alpha2_code

      t.timestamps null: false
    end
  end
end
