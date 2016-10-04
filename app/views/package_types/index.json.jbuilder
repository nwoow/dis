json.array!(@package_types) do |package_type|
  json.extract! package_type, :id, :package_type_id, :package_type_name, :data_source_data_source_id, :status
  json.url package_type_url(package_type, format: :json)
end
