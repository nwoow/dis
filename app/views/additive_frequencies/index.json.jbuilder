json.array!(@additive_frequencies) do |additive_frequency|
  json.extract! additive_frequency, :id,:display_text
  json.url additive_frequency_url(additive_frequency, format: :json)
end
