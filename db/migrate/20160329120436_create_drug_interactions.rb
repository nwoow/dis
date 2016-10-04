class CreateDrugInteractions < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to drug_interactions
  def change
    create_table :drug_interactions do |t|
      t.integer :generic_id
      t.integer :generic_id
      t.text :drug_interaction_text
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
