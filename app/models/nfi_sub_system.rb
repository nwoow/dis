class NfiSubSystem < ActiveRecord::Base
  validates :sub_system_description, :system_id, :data_source_id, :status, presence: true

end
