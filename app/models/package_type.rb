class PackageType < ActiveRecord::Base
  validates :package_type_name, :data_source_id, :status, presence: true

end
