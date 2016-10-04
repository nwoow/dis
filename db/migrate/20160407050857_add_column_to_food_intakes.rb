class AddColumnToFoodIntakes < ActiveRecord::Migration
  def change
    add_column :food_intakes, :name, :text

  end
end
