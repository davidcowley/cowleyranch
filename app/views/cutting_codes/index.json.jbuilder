json.array!(@cutting_codes) do |cutting_code|
  json.extract! cutting_code, :id, :description, :abbreviation, :status
  json.url cutting_code_url(cutting_code, format: :json)
end
