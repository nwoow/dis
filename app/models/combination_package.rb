class CombinationPackage < ActiveRecord::Base
  validates :brand_name_id, :manufacturer_id,:dispensible_combination_id, :combination_text,:package_qty, :package_type_id, :price ,:combination_package_text ,:data_source_id, :status, presence: true

end
