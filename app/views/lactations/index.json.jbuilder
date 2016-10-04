json.array!(@lactations) do |lactation|
  json.extract! lactation, :id, :generics_generic_id, :lactation_text, :data_source_data_source_id, :lactation_id, :status
  json.url lactation_url(lactation, format: :json)
end
