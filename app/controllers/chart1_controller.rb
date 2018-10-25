class Chart1Controller < ApplicationController
	
	def index
		@deadly_count = DeadlyQuake.search(params[:term]).count
		@earthquake_count = EarthquakeDatum.search(params[:term]).count
		@tsunami_count = Tsunami.search(params[:term]).count
    end
	
end
