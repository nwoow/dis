class NfiSystem < ActiveRecord::Base
  validates :system_name, :sysem_description, :data_source_id, :sub_system_exist, :status, presence: true

end
