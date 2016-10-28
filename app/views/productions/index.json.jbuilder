json.array!(@productions) do |production|
  json.extract! production, :id, :bail_code, :cutting_code, :hay_type, :field, :number_of_bales, :production_at
  json.url production_url(production, format: :json)
end
