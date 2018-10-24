class EarthquakeDatumSerializer < ActiveModel::Serializer
  attributes :id, :Date, :Time, :Latitude, :Longitude, :Depth, :Magnitude, :Magnitude, :Type, :SourceId, :Source, :SameDayAs
end
