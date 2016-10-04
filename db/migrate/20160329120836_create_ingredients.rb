class CreateIngredients < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to ingredients
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
