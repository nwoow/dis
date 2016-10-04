class CreateIndicationGenericMaps < ActiveRecord::Migration
	  #...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to indication_generic_maps
  def change
    create_table :indication_generic_maps do |t|
      t.integer :indication_id
      t.integer :generic_id
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
