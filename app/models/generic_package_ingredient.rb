class GenericPackageIngredient < ActiveRecord::Base

validates   :generic_package_id, :ingredient_id, :ingredient_qty, :doseunit_id, :data_source_id,  presence: true

end