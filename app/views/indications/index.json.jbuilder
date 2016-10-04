json.array!(@indications) do |indication|
  json.extract! indication, :id, :indication_name, :data_source_id, :status
  json.url indication_url(indication, format: :json)
end
