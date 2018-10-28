# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'DeadlyQuakes.csv'))
csvDeadly = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csvDeadly.each do |row|
  t = DeadlyQuake.new
  t.EqCode = row['EqCode']
  t.Date = row['Date']
  t.Location = row['Location']
  t.Longitude = row['Longitude']
  t.Latitude = row['Latitude']
  t.Deaths = row['Deaths']
  t.Magnitude = row['Magnitude']
  t.tsunami_id = nil
  t.save
end



csv_text = File.read(Rails.root.join('lib', 'seeds', 'Tsunami.csv')).scrub
csvTsunami = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csvTsunami.each do |row|
  t = Tsunami.new
  t.Date = row['Date']
  t.Time = row['Time']
  t.Focal_Depth = row['Focal_Depth']
  t.Primary_Magnitude = row['Primary_Magnitude']
  t.Location_Name = row['Location_Name']
  t.Latitude = row['Latitude']
  t.Longitude = row['Longitude']
  t.Maximum_Water_Height = row['Maximum_Water_Height']
  t.Total_Deaths = row['Total_Deaths']
  t.Total_Injuries = row['Total_Injuries']
  t.Total_Damage_Million_Dollars = row['Total_Damage_Million_Dollars']
  t.Total_Houses_Destroyed = row['Total_Houses_Destroyed']
  t.Total_Houses_Damaged = row['Total_Houses_Damaged']
  t.save
end

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Earthquake.csv'))
csvEarthquake = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csvEarthquake.each do |row|
  t = EarthquakeDatum.new
    t.Date = row['Date']
    t.Time = row['Time']
    t.Latitude = row['Latitude']
    t.Longitude = row['Longitude']
    t.Depth = row['Depth']
    t.Magnitude = row['Magnitude']
    t.Type = row['Type']
    t.SourceId = row['SourceId']
    t.Source = row['Source']
    t.deadly_quake_id = nil
    t.tsunami_id = nil
    t.save
end

earthquakes = EarthquakeDatum.all
deadlyquakes = DeadlyQuake.all
tsunamis = Tsunami.all

deadlyquakes.each do |deadlyquake|
  earthquakes.each do |earthquake|
    if earthquake.Date == deadlyquake.Date
      earthquake.deadly_quake_id = deadlyquake.id
      earthquake.save  
    end
  end
end

tsunamis.each do |tsunami|
  earthquakes.each do |earthquake|
    if earthquake.Date == tsunami.Date
      earthquake.tsunami_id = tsunami.id
      earthquake.save
    end
  end

  deadlyquakes.each do |deadlyquake|
    if deadlyquake.Date == tsunami.Date
      deadlyquake.tsunami_id = tsunami.id
      deadlyquake.save
    end
  end
end

# b.earthquake_datum.create!(nil)
# earthquakes = EarthquakeDatum.all
# deadlyquakes = DeadlyQuake.all
# earthquakes.each do |earthquake|
#   deadlyquakes.each do |deadlyquakes|
#     if earthquake.Date == deadlyquakes.Date
#       earthquake.deadly_quake_id = deadlyquakes.id
#     end
#   end
# end


