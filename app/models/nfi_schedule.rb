class NfiSchedule < ActiveRecord::Base
  validates :schedule_name, :description, :data_source_id,  presence: true

end
