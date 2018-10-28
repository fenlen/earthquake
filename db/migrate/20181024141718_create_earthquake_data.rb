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
      t.references :deadly_quake, foreign_key: true
      t.references :tsunami, foreign_key: true
      t.timestamps
    end
    add_index :earthquake_data, [:deadly_quake_id, :created_at]
  end
end
