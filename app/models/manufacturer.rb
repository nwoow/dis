class Manufacturer < ActiveRecord::Base
  validates :manufacturer_name, :manufacturer_abbr, :address1, :state_id, :city_id, :phone, :email, :data_source_id, presence: true

end
