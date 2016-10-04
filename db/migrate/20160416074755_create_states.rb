class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state_name
      t.string :state_HASC_code
      t.string :country_alpha2_code

      t.timestamps null: false
    end
  end
end
