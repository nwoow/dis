json.array!(@states) do |state|
  json.extract! state, :id, :state_name, :state_HASC_code, :country_alpha2_code
  json.url state_url(state, format: :json)
end
