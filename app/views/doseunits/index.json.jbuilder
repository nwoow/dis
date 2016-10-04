json.array!(@doseunits) do |doseunit|
  json.extract! doseunit, :id, :doseunit_id, :doseunit_name, :doseunit_abbr, :data_source_data_source_id, :status
  json.url doseunit_url(doseunit, format: :json)
end
