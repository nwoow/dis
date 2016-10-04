class CreateNfiSystems < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 28/3/16...
	# Migration to nfi_systems
  def change
    create_table :nfi_systems do |t|
      t.string :system_name
      t.text :sysem_description
      t.integer :data_source_id
      t.boolean :sub_system_exist  , default: false
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
