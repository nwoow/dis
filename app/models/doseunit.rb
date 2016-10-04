class Doseunit < ActiveRecord::Base
  validates :doseunit_name, :doseunit_abbr, :data_source_id, presence: true

end
