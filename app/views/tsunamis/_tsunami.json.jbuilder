json.extract! tsunami, :id, :Date, :Time, :SameDayAs, :FocalDepth, :Magnitude, :Country, :Location, :Latitude, :Longitude, :MaximumWaterHeight, :Deaths, :Injuries, :DamageInMillions, :HousesDestroyed, :HausesDamaged, :created_at, :updated_at
json.url tsunami_url(tsunami, format: :json)
