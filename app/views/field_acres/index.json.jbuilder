json.array!(@field_acres) do |field_acre|
  json.extract! field_acre, :id, :description, :abbreviation, :status, :number_of_acres, :field_type.description
  json.url field_acre_url(field_acre, format: :json)
end
