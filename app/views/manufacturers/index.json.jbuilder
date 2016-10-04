json.array!(@manufacturers) do |manufacturer|
  json.extract! manufacturer, :id, :manufacturer_id, :manufacturer_name, :manufacturer_abbr, :address1, :address2, :india_state_id, :city, :pin, :phone, :fax, :email, :website, :mobilephone, :data_source_id, :lactation_id, :status
  json.url manufacturer_url(manufacturer, format: :json)
end
