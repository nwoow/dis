class CreateAdditiveFrequencies < ActiveRecord::Migration
    #...Owner: Nilay SIngh....
    # ... Created at : 28/3/16...
	# Migration to additive_frequencies
  def change
    create_table :additive_frequencies do |t|
      t.text :display_text
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
