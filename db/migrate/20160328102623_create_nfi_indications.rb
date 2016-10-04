class CreateNfiIndications < ActiveRecord::Migration
	 #...Owner: Nilay SIngh....
    # ... Created at : 28/3/16...
	# Migration to nfi_indications
  def change
    create_table :nfi_indications do |t| 
      t.string :indication_name
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
