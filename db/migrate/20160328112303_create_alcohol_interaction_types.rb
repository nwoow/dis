class CreateAlcoholInteractionTypes < ActiveRecord::Migration

	#...Owner: Nilay SIngh....
    # ... Created at : 28/3/16...
	# Migration to alcohol_interaction_types
  def change
    create_table :alcohol_interaction_types do |t|
      t.string :alcohol_interaction_type_name
      t.text :alcohol_interaction_type_text
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
