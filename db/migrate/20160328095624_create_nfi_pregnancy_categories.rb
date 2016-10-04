class CreateNfiPregnancyCategories < ActiveRecord::Migration

	#...Owner: Nilay SIngh....
    # ... Created at : 28/3/16...
	# Migration to nfi_pregnancy_categories
  def change
    create_table :nfi_pregnancy_categories do |t|
      t.string :preg_category_name
      t.string :preg_category_description
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
