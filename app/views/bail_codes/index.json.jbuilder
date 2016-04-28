json.array!(@bail_codes) do |bail_code|
  json.extract! bail_code, :id, :description, :abbreviation, :status, :weight
  json.url bail_code_url(bail_code, format: :json)
end
