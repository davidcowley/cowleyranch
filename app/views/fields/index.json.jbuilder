json.array!(@fields) do |field|
  json.extract! field, :id, :description, :abbreviation, :status
  json.url field_url(field, format: :json)
end
