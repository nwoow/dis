class CreateRoutes < ActiveRecord::Migration
	 #...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to routes
  def change
    create_table :routes do |t|
      t.string :route_name
      t.string :route_abbr
      t.text :route_description
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
