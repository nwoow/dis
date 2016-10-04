class Route < ActiveRecord::Base
  validates :route_name, :route_abbr, :route_description, :data_source_id, presence: true

end
