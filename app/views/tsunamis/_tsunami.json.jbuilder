json.extract! tsunami, :id, :Date, :Time, :SameDayAs, :Focal_Depth, :Primary_Magnitude, :Country, :Location_Name, :Latitude, :Longitude, :Maximun_Water_Height, :Total_Deaths, :Total_Injuries, :Total_Damage_Million_Dollars, :Total_Houses_Destroyed, :Total_Houses_Damaged, :created_at, :updated_at
json.url tsunami_url(tsunami, format: :json)
