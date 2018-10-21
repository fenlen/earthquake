class CreateDeadliests < ActiveRecord::Migration[5.2]
  def change
    create_table :deadliests do |t|
      t.string :EarthquakeCode
      t.date :Date
      t.string :Location
      t.decimal :Longitude
      t.decimal :Latitude
      t.integer :deaths
      t.decimal :Magnitude

      t.timestamps
    end
  end
end
