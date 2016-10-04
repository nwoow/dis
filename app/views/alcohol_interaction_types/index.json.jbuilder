json.array!(@alcohol_interaction_types) do |alcohol_interaction_type|
  json.extract! alcohol_interaction_type, :id
  json.url alcohol_interaction_type_url(alcohol_interaction_type, format: :json)
end
