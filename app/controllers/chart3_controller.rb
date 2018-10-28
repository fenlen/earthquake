class Chart3Controller < ApplicationController

  def index
    @tsunami_count = Tsunami.pluck(:Date, :Total_Deaths)
    @tsunami_count.each do |x|
      x[0] = "#{x[0].day}/#{x[0].month}/#{x[0].year}"
    end
  end
end
