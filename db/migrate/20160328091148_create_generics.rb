class CreateGenerics < ActiveRecord::Migration
    #...Owner: Nilay SIngh....
    # ... Created at : 28/3/16...
	# Migration to create generic table
  def change
    create_table :generics do |t|
    	t.string :generic_name
    	t.boolean :is_essential , default: false
    	t.integer :generic_type_id
    	t.integer :schedule_id
    	t.integer :preg_category_id
    	t.integer :food_intake_id
    	t.integer :rxcui
    	t.integer :data_source_id
    	t.boolean :status  , default: false

    	t.timestamps null: false


    end
  end
end
