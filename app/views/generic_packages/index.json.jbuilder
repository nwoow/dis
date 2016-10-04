json.array!(@generic_packages) do |generic_package|
  json.extract! generic_package, :id, :generic_package_id, :brand_name_id, :manufacturer_manufacturer_id, :dispensible_generic_id, :package_qty, :package_type_id, :price, :generic_package_text, :data_source_data_source_id, :status
  json.url generic_package_url(generic_package, format: :json)
end
