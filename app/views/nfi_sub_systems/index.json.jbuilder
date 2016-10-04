json.array!(@nfi_sub_systems) do |nfi_sub_system|
  json.extract! nfi_sub_system, :id, :sub_system_id, :sub_system_description, :system_id, :data_source_data_source_id, :status
  json.url nfi_sub_system_url(nfi_sub_system, format: :json)
end
