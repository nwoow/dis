class CreatePackageTypes < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to package_types
  def change
    create_table :package_types do |t|
      t.string :package_type_name
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
