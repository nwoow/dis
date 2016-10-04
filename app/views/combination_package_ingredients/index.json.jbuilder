json.array!(@combination_package_ingredients) do |combination_package_ingredient|
  json.extract! combination_package_ingredient, :id
  json.url combination_package_ingredient_url(combination_package_ingredient, format: :json)
end
