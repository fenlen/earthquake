class EarthquakeDatum < ApplicationRecord

  def self.search(term)
    if term and term != ""
	  date= Date.parse(term)
      where(:Date => date.beginning_of_day..date.end_of_day)
    else
      all
    end
  end

end
