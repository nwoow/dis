json.array!(@nfi_pregnancy_categories) do |nfi_pregnancy_category|
  json.extract! nfi_pregnancy_category, :id, :preg_category_id, :preg_category_name, :preg_category_description, :data_source_data_source_id, :status
  json.url nfi_pregnancy_category_url(nfi_pregnancy_category, format: :json)
end
