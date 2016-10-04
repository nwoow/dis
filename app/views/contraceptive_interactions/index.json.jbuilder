json.array!(@contraceptive_interactions) do |contraceptive_interaction|
  json.extract! contraceptive_interaction, :id, :contraceptive_interaction_id, :generic_id, :contraceptive_interaction_text, :data_source_data_source_id, :status
  json.url contraceptive_interaction_url(contraceptive_interaction, format: :json)
end
