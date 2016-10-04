json.array!(@routes) do |route|
  json.extract! route, :id, :route_id, :route_name, :route_abbr, :route_description, :data_source_data_source_id, :status
  json.url route_url(route, format: :json)
end
