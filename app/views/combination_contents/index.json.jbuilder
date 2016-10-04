json.array!(@combination_contents) do |combination_content|
  json.extract! combination_content, :id
  json.url combination_content_url(combination_content, format: :json)
end
