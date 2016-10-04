json.array!(@nfi_systems) do |nfi_system|
  json.extract! nfi_system, :id, :system_name, :sysem_description, :data_source_data_source_id, :sub_system_exist, :status
  json.url nfi_system_url(nfi_system, format: :json)
end
