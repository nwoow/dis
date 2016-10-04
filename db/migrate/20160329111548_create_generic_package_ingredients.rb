class CreateGenericPackageIngredients < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to generic_package_ingredients
  def change
    create_table :generic_package_ingredients do |t|
      t.integer :generic_package_id
      t.integer :ingredient_id
      t.integer :ingredient_qty
      t.integer :doseunit_id
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
