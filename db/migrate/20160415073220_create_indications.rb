class CreateIndications < ActiveRecord::Migration
  def change
    create_table :indications do |t|
      t.string :indication_name
      t.integer :data_source_id
      t.boolean :status, default: false
      t.timestamps null: false
    end
  end
end
