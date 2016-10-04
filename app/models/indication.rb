class Indication < ActiveRecord::Base
  validates :indication_name, :data_source_id, presence: true
end
