class CreateAlcoholInteractions < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to alcohol_interactions
  def change
    create_table :alcohol_interactions do |t|
      t.integer :generic_id
      t.integer :alcohol_interaction_type_id
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
