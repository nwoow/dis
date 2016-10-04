json.array!(@cities) do |city|
  json.extract! city, :id, :distric_name, :district_code, :state_HASC_code, :country_alpha2_code
  json.url city_url(city, format: :json)
end
