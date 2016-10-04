json.array!(@dose_periods) do |dose_period|
  json.extract! dose_period, :id, :sub_system_name, :dose_period_id, :dose_period_name, :dose_period_abbr, :data_source_data_source_id, :status
  json.url dose_period_url(dose_period, format: :json)
end
