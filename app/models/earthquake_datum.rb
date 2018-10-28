class EarthquakeDatum < Calamity
  belongs_to :deadly_quake, optional: true
  belongs_to :tsunami, optional: true
end
