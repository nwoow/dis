json.array!(@doseform_doseunits) do |doseform_doseunit|
  json.extract! doseform_doseunit, :id, :doseform_id, :doseunit_id, :is_default
  json.url doseform_doseunit_url(doseform_doseunit, format: :json)
end
