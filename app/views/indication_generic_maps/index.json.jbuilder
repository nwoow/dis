json.array!(@indication_generic_maps) do |indication_generic_map|
  json.extract! indication_generic_map, :id, :indication_generic_map_id, :indication_id, :generic_id, :data_source_id, :status
  json.url indication_generic_map_url(indication_generic_map, format: :json)
end
