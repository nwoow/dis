json.array!(@generics) do |generic|
  json.extract! generic, :id, :generic_name, :is_essential, :generic_type_generic_type_id, :schedule_id, :preg_category_id, :food_intake_id, :rxcui, :data_source_data_source_id, :status
  json.url generic_url(generic, format: :json)
end
