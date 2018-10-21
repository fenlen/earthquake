class CreateTsunamis < ActiveRecord::Migration[5.2]
  def change
    create_table :tsunamis do |t|
      t.date :Date
      t.time :Time
      t.string :SameDayAs
      t.decimal :FocalDepth
      t.decimal :Magnitude
      t.string :Country
      t.string :Location
      t.decimal :Latitude
      t.decimal :Longitude
      t.decimal :MaximumWaterHeight
      t.integer :Deaths
      t.integer :Injuries
      t.integer :DamageInMillions
      t.integer :HousesDestroyed
      t.integer :HausesDamaged

      t.timestamps
    end
  end
end
