class EarthquakeDataController < ApplicationController
  before_action :set_earthquake_datum, only: [:show, :edit, :update, :destroy]

  # GET /earthquake_data
  # GET /earthquake_data.json
  def index
    @earthquake_data = EarthquakeDatum.filter(params[:year], params[:mag])
  end

  # GET /earthquake_data/1
  # GET /earthquake_data/1.json
  def show
    earthquake_data = EarthquakeDatum.find(params[:id])
    gon.earthquake_data = earthquake_data
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_earthquake_datum
    @earthquake_datum = EarthquakeDatum.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def earthquake_datum_params
    params.require(:earthquake_datum).permit(:Date, :Time, :Latitude, :Longitude, :Depth, :Magnitude, :Magnitude, :Type, :SourceId, :Source, :SameDayAs)
  end
end
