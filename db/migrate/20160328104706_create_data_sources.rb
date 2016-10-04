class CreateDataSources < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 28/3/16...
	# Migration to data_sources
  def change
    create_table :data_sources do |t|
      t.string :data_source_name
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
