class ChangeManufacturerColumnName < ActiveRecord::Migration
  def change
    rename_column :manufacturers, :india_state_id, :state_id
  end
end
