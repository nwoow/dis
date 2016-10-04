class CreateCombinationPackages < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to combination_packages
  def change
    create_table :combination_packages do |t|
      t.integer :brand_name_id
      t.integer :manufacturer_id
      t.integer :dispensible_combination_id
      t.text :combination_text
      t.integer :package_qty
      t.integer :package_type_id
      t.string :price
      t.string :combination_package_text
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
