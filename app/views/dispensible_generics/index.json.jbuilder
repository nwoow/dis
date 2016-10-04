json.array!(@dispensible_generics) do |dispensible_generic|
  json.extract! dispensible_generic, :id, :dispensible_generic_id, :routes_route_id, :doseform_doseform_id, :generic_strength, :doseunits_doseunit_id, :dispensible_qty, :doseunit_id, :dispensible_generic_text, :data_source_data_source_id, :status
  json.url dispensible_generic_url(dispensible_generic, format: :json)
end
