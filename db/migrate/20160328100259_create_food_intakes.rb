class CreateFoodIntakes < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 28/3/16...
	# Migration to food_intakes
  def change
    create_table :food_intakes do |t|
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
