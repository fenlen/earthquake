class DeadlyQuake < Calamity
  has_many :earthquake_datum
  belongs_to :tsunami, optional: true
end
