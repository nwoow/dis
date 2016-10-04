class Generic < ActiveRecord::Base
  validates :generic_name, :data_source_id, presence: true

end
