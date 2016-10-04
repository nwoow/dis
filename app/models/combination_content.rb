class CombinationContent < ActiveRecord::Base
  validates :combination_generic, :constituent_generic,:generic_strength_content, :doseunit_id,:data_source_id, presence: true

end
