json.array!(@generic_package_ingredients) do |generic_package_ingredient|
  json.extract! generic_package_ingredient, :id, :generic_package_ingredient_id, :generic_package_id, :ingredient_id, :ingredient_qty, :doseunits_doseunit_id, :data_source_data_source_id, :status
  json.url generic_package_ingredient_url(generic_package_ingredient, format: :json)
end
