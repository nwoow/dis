class CreateLactations < ActiveRecord::Migration
	 #...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to lactations
  def change
    create_table :lactations do |t|
      t.integer :generic_id
      t.string :lactation_text
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
