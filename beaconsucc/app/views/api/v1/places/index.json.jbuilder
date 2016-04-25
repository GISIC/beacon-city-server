json.array!(@places) do |place|
  json.extract! place, :id, :minor, :name, :address, :description, :latitude, :longitude, :city_id, :category_id
  json.url place_url(place, format: :json)
  json.url_large place.url_large
  json.url_medium place.url_medium
  json.url_small place.url_small
end
