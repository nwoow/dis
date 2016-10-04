class CreateContraceptiveInteractions < ActiveRecord::Migration
    #...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to contraceptive_interactions
  def change
    create_table :contraceptive_interactions do |t|
      t.integer :generic_id
      t.text :contraceptive_interaction_text
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
