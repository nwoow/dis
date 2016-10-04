class DoseForm < ActiveRecord::Base
  validates :doseform_name, :doseform_abbr, :data_source_id, presence: true

end
