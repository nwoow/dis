json.array!(@food_intakes) do |food_intake|
  json.extract! food_intake, :id, :food_intake_id, :status
  json.url food_intake_url(food_intake, format: :json)
end
