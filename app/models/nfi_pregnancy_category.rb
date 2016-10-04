class NfiPregnancyCategory < ActiveRecord::Base
  validates :preg_category_name, :preg_category_description, :data_source_id, :status, presence: true

end
