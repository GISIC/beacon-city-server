json.array!(@cities) do |city|
  json.extract! city, :id, :uuid, :name
  json.url city_url(city, format: :json)
end
