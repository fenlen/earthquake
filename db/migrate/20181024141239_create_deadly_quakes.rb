class CreateDeadlyQuakes < ActiveRecord::Migration[5.2]
  def change
    create_table :deadly_quakes do |t|
      t.string :EqCode
      t.date :Date
      t.string :Location
      t.decimal :Latitude
      t.decimal :Longitude
      t.integer :Deaths
      t.decimal :Magnitude
      t.references :tsunami, foreign_key: true
      t.timestamps
    end
  end
end
