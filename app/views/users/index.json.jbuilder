json.array!(@users) do |user|
  json.extract! user, :id, :latitude, :longitude, :name, :address, :tiltle
  json.url user_url(user, format: :json)
end
