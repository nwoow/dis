class ChangeFoodIntakeColumnType < ActiveRecord::Migration
  def change
    rename_column :food_intakes, :name, :food_intake_name
  end
end
