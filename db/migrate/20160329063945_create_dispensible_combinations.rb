class CreateDispensibleCombinations < ActiveRecord::Migration
	 #...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to dispensible_combinations
  def change
    create_table :dispensible_combinations do |t|
      t.string :combination_text
      t.integer :generic_id
      t.integer :doseform_id
      t.integer :route_id
      t.string :dispensible_combination_text
      t.integer :data_source_id
      t.boolean :status  , default: false

      t.timestamps null: false
    end
  end
end
