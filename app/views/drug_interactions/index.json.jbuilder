json.array!(@drug_interactions) do |drug_interaction|
  json.extract! drug_interaction, :id, :drug_interaction_id, :generics_generic_id, :generic_id, :drug_interaction_text, :data_source_data_source_id, :status, :created_at, :updated_at
  json.url drug_interaction_url(drug_interaction, format: :json)
end
