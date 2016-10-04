json.array!(@nfi_indications) do |nfi_indication|
  json.extract! nfi_indication, :id, :indication_id, :indication_name, :data_source_data_source_id, :status
  json.url nfi_indication_url(nfi_indication, format: :json)
end
