class Chart1Controller < ApplicationController
	
	def index
		@deadly_count = DeadlyQuake.filter(params[:year], params[:mag]).count
		@earthquake_count = EarthquakeDatum.filter(params[:year], params[:mag]).count
		@tsunami_count = Tsunami.filter(params[:year], params[:mag]).count
    end
	
end
