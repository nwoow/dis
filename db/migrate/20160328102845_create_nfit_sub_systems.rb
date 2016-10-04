class CreateNfitSubSystems < ActiveRecord::Migration
    #...Owner: Nilay SIngh....
    # ... Created at : 28/3/16...
	# Migration to nfit_sub_systems
  def change
    create_table :nfi_sub_systems do |t|
      t.text :sub_system_description
      t.integer :data_source_id
      t.integer :system_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
