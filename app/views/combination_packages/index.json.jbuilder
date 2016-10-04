json.array!(@combination_packages) do |combination_package|
  json.extract! combination_package, :id
  json.url combination_package_url(combination_package, format: :json)
end
