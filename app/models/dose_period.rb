class DosePeriod < ActiveRecord::Base
  validates :dose_period_name, :dose_period_abbr, :data_source_id, presence: true

end
