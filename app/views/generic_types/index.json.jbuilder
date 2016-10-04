json.array!(@generic_types) do |generic_type|
  json.extract! generic_type, :id, :generic_type_name, :data_source_data_source_id, :status
  json.url generic_type_url(generic_type, format: :json)
end
