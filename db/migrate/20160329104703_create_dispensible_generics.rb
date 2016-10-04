class CreateDispensibleGenerics < ActiveRecord::Migration
		#...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to dispensible_generics
  def change
    create_table :dispensible_generics do |t|
      t.integer :generic_id
      t.integer :route_id
      t.integer :doseform_id
      t.integer :generic_strength
      t.integer :doseunit_id
      t.integer :dispensible_qty
      t.integer :doseunit_id
      t.text :dispensible_generic_text
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
