class CreateManufacturers < ActiveRecord::Migration
	#...Owner: Nilay SIngh....
    # ... Created at : 29/3/16...
	# Migration to manufacturers
  def change
    create_table :manufacturers do |t|
      t.text :manufacturer_name
      t.string :manufacturer_abbr
      t.text :address1
      t.text :address2
      t.string :city
      t.integer :india_state_id
      t.string :pin
      t.string :phone
      t.string :phone2
      t.string :fax
      t.string :email
      t.string :website
      t.string :mobilephone
      t.integer :data_source_id
      t.boolean :status  , default: false
      t.timestamps null: false
    end
  end
end
