class CreateCombinationContents < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to combination_contents
  def change
    create_table :combination_contents do |t|
      t.integer :generic_id
      t.integer :generic_id
      t.integer :generic_strength_content
      t.integer :doseunit_id
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
