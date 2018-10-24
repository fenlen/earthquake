json.extract! earthquake_datum, :id, :Date, :Time, :Latitude, :Longitude, :Depth, :Magnitude, :Magnitude, :Type, :ID, :Source, :SameDayAs, :created_at, :updated_at
json.url earthquake_datum_url(earthquake_datum, format: :json)
