class CreateRecordeds < ActiveRecord::Migration[5.2]
  def change
    create_table :recordeds do |t|
      t.date :Date
      t.time :Time
      t.decimal :Latitude
      t.decimal :Longitude
      t.decimal :Depth
      t.decimal :Magnitude
      t.string :MagnitudeType
      t.string :SourceId
      t.string :Source
      t.string :SameDayAs

      t.timestamps
    end
  end
end
