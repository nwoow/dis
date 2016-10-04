json.array!(@alcohol_interactions) do |alcohol_interaction|
  json.extract! alcohol_interaction, :id
  json.url alcohol_interaction_url(alcohol_interaction, format: :json)
end
