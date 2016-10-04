class CreateDoseForms < ActiveRecord::Migration
  def change
    create_table :dose_forms do |t|
      t.string :doseform_name
      t.string :doseform_abbr
      t.integer :data_source_id
      t.boolean :status

      t.timestamps null: false
    end
  end
end
