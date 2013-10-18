json.array!(@case_sensitives) do |case_sensitive|
  json.extract! case_sensitive, :name
  json.url case_sensitive_url(case_sensitive, format: :json)
end
