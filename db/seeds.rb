# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'DeadlyQuakes.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = DeadlyQuake.new
  t.EqCode = row['EqCode']
  t.Date = row['Date']
  t.Location = row['Location']
  t.Longitude = row['Longitude']
  t.Latitude = row['Latitude']
  t.Deaths = row['Deaths']
  t.Magnitude = row['Magnitude']
  t.save
end



csv_text = File.read(Rails.root.join('lib', 'seeds', 'Tsunami.csv')).scrub
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Tsunami.new
  t.Date = row['Date']
  t.Time = row['Time']
  t.SameDayAs = row['SameDayAs']
  t.Focal_Depth = row['Focal_Depth']
  t.Primary_Magnitude = row['Primary_Magnitude']
  t.Location_Name = row['Location_Name']
  t.Latitude = row['Latitude']
  t.Longitude = row['Longitude']
  t.Maximun_Water_Height = row['Maximun_Water_Height']
  t.Total_Deaths = row['Total_Deaths']
  t.Total_Injuries = row['Total_Injuries']
  t.Total_Damage_Million_Dollars = row['Total_Damage_Million_Dollars']
  t.Total_Houses_Destroyed = row['Total_Houses_Destroyed']
  t.Total_Houses_Damaged = row['Total_Houses_Damaged']
  t.save
end

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Earthquake.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = EarthquakeDatum.new
  t.Date = row['Date']
  t.Time = row['Time']
  t.Latitude = row['Latitude']
  t.Longitude = row['Longitude']
  t.Depth = row['Depth']
  t.Magnitude = row['Magnitude']
  t.Magnitude = row['Magnitude']
  t.Type = row['Type']
  t.SourceId = row['SourceId']
  t.Source = row['Source']
  t.SameDayAs = row['SameDayAs']
  t.save
end



