class Lactation < ActiveRecord::Base
  validates :generic_id, :lactation_text, :data_source_id, presence: true
end
