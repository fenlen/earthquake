class Chart2Controller < ApplicationController
	
	def index
		@deadly_count = DeadlyQuake.pluck(:Date, :Deaths)
		@deadly_count.each do |x|
			x[0] = "#{x[0].day}/#{x[0].month}/#{x[0].year}"
		end
	end
	

end
