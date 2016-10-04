class CreateBrandNames < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to brand_names
  def change
    create_table :brand_names do |t|
      t.string :brand_name
      t.integer :generic_id
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
