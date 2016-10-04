class ChangeColumnnameCombinationcontents < ActiveRecord::Migration
  def change
    rename_column :combination_contents, :generic_id, :combination_generic
    add_column :combination_contents, :constituent_generic, :integer
  end
end
