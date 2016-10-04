json.array!(@brand_names) do |brand_name|
  json.extract! brand_name, :id
  json.url brand_name_url(brand_name, format: :json)
end
