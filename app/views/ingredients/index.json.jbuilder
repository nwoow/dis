json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :ingredient_id, :data_source_data_source_id, :status
  json.url ingredient_url(ingredient, format: :json)
end
