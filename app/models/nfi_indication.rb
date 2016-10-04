class NfiIndication < ActiveRecord::Base
  validates :indication_name, :data_source_id, :status, presence: true

end
