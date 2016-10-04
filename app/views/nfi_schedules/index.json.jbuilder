json.array!(@nfi_schedules) do |nfi_schedule|
  json.extract! nfi_schedule, :id, :schedule_id, :schedule_name, :description, :data_source_data_source_id, :status
  json.url nfi_schedule_url(nfi_schedule, format: :json)
end
