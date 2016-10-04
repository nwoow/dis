class AddDescAdditiveFrequency < ActiveRecord::Migration
  def change
  	add_column :additive_frequencies, :description, :text
  end
end
