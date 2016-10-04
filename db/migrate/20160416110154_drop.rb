class Drop < ActiveRecord::Migration
  def change
    drop_table :nfi_indications
  end
end
