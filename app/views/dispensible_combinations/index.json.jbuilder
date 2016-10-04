json.array!(@dispensible_combinations) do |dispensible_combination|
  json.extract! dispensible_combination, :id, :dispensible_combination_id, :combination_text, :generic_id, :doseform_id, :route_id, :dispensible_combination_text, :data_source_data_source_id, :status
  json.url dispensible_combination_url(dispensible_combination, format: :json)
end
