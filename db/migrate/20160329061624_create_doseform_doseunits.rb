class CreateDoseformDoseunits < ActiveRecord::Migration
    #...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to doseform_doseunits
  def change
    create_table :doseform_doseunits do |t|
      t.integer :doseform_id
      t.integer :doseunit_id
      t.boolean :is_default
      t.timestamps null: false
    end
  end
end
