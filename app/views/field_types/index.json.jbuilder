json.array!(@field_types) do |field_type|
  json.extract! field_type, :id, :description, :abbreviation, :status
  json.url field_type_url(field_type, format: :json)
end
