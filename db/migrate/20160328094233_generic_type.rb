class GenericType < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 28/3/16...
	# Migration to create generic_type
  def change
    create_table :generic_types do |t|
    	t.string :generic_type_name
    	t.integer :data_source_id
    	t.boolean :status  , default: false
    	t.timestamps null: false
    end
  end
end
