class IndicationGenericMap < ActiveRecord::Base
  validates :indication_id, :generic_id, :data_source_id, presence: true

end
