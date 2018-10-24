class CreateEarthquakeData < ActiveRecord::Migration[5.2]
  def change
    create_table :earthquake_data do |t|
      t.date :Date
      t.time :Time
      t.decimal :Latitude
      t.decimal :Longitude
      t.integer :Depth
      t.decimal :Magnitude
      t.string :Magnitude
      t.string :Type
      t.string :SourceId
      t.string :Source
      t.string :SameDayAs

      t.timestamps
    end
  end
end
