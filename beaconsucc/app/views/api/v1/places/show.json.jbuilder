json.extract! @place, :id, :minor, :name, :address, :description, :latitude, :longitude, :city_id, :category_id, :created_at, :updated_at
json.url_large @place.url_large
json.url_medium @place.url_medium
json.url_small @place.url_small
