class CombinationPackageIngredient < ActiveRecord::Base
  validates :combination_package_id, :ingredient_id,:ingredient_qty, :doseunit_id,:data_source_id, :status, presence: true
end
