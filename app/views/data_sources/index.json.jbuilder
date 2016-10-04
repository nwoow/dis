json.array!(@data_sources) do |data_source|
  json.extract! data_source, :id, :data_source_id, :data_source_name, :status
  json.url data_source_url(data_source, format: :json)
end
