class CreateDosePeriods < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 28/3/16...
	# Migration to dose_periods
  def change
    create_table :dose_periods do |t|
      t.string :dose_period_name
      t.string :dose_period_abbr
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
