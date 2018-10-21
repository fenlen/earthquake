json.extract! deadliest, :id, :EarthquakeCode, :Date, :Location, :Longitude, :Latitude, :deaths, :Magnitude, :created_at, :updated_at
json.url deadliest_url(deadliest, format: :json)
