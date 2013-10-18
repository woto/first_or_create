json.array!(@case_insensitives) do |case_insensitive|
  json.extract! case_insensitive, :name
  json.url case_insensitive_url(case_insensitive, format: :json)
end
