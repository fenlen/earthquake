class DeadlyQuakeSerializer < ActiveModel::Serializer
  attributes :id, :EqCode, :Date, :Location, :Longitude, :Latitude, :Deaths, :Magnitude
end
