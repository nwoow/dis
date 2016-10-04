class CreateNfiSchedules < ActiveRecord::Migration
	 #...Owner: Nilay SIngh....
    # ... Created at : 28/3/16...
	# Migration to nfi_schedules
  def change
    create_table :nfi_schedules do |t|
      t.string :schedule_name
      t.text :description
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
