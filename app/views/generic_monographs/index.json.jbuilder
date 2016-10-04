json.array!(@generic_monographs) do |generic_monograph|
  json.extract! generic_monograph, :id, :generic_monograph_id, :generics_generic_id, :dose_monograph, :contraindication_monograph, :precaution_monograph, :adverseeffect_monograph, :storage_monograph, :data_source_data_source_id, :status
  json.url generic_monograph_url(generic_monograph, format: :json)
end
