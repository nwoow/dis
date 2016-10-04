class CreateGenericMonographs < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to generic_monographs
  def change
    create_table :generic_monographs do |t|
      t.integer :generic_id
      t.text :dose_monograph
      t.text :contraindication_monograph
      t.text :precaution_monograph
      t.text :adverseeffect_monograph
      t.text :storage_monograph
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
