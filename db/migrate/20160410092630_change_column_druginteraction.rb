class ChangeColumnDruginteraction < ActiveRecord::Migration
  def change
    rename_column :drug_interactions, :generic_id, :first_generic_id
    add_column :drug_interactions, :second_generic_id, :integer
  end
end
