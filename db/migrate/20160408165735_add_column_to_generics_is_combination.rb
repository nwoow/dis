class AddColumnToGenericsIsCombination < ActiveRecord::Migration
  def change
    add_column :generics, :is_combination, :boolean, default: false
  end
end
