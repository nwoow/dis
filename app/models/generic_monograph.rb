class GenericMonograph < ActiveRecord::Base
  validates :generic_id, :data_source_id, presence: true
end
