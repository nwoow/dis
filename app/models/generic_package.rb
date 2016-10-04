class GenericPackage < ActiveRecord::Base
  validates :brand_name_id, :manufacturer_id, :dispensible_generic_id, :package_qty, :package_type_id, :price, :generic_package_text, :data_source_id, :status, presence: true
end
