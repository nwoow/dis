json.array!(@hepatic_impairments) do |hepatic_impairment|
  json.extract! hepatic_impairment, :id, :hepatic_imp_id, :generics_generic_id, :hepatic_imp_instructions, :hepatic_imp_text, :data_source_data_source_id, :status
  json.url hepatic_impairment_url(hepatic_impairment, format: :json)
end
