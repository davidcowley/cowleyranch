json.array!(@hay_types) do |hay_type|
  json.extract! hay_type, :id, :description, :abbreviation, :status
  json.url hay_type_url(hay_type, format: :json)
end
