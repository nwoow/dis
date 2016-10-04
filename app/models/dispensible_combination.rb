class DispensibleCombination < ActiveRecord::Base
  validates :generic_id, :doseform_id, :route_id, :dispensible_combination_text, :data_source_id, presence: true
end
