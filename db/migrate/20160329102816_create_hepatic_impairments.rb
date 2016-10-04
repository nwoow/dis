class CreateHepaticImpairments < ActiveRecord::Migration
	 #...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to hepatic_impairments
  def change
    create_table :hepatic_impairments do |t|
      t.integer :generic_id
      t.text :hepatic_imp_instructions
      t.text :hepatic_imp_text
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
