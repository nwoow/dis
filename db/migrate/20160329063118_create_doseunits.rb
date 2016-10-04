class CreateDoseunits < ActiveRecord::Migration
	 #...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to doseunits
  def change
    create_table :doseunits do |t|
      t.string :doseunit_name
      t.string :doseunit_abbr
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
