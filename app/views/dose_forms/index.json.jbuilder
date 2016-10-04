json.array!(@dose_forms) do |dose_form|
  json.extract! dose_form, :id, :doseform_name, :doseform_abbr, :data_source_id, :status
  json.url dose_form_url(dose_form, format: :json)
end
