class BrandName < ActiveRecord::Base
  validates :brand_name, :generic_id,:data_source_id,presence: true 
end
