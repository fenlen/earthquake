class TsunamisController < ApplicationController
  before_action :set_tsunami, only: [:show, :edit, :update, :destroy]

  # GET /tsunamis
  # GET /tsunamis.json
  def index
    @tsunamis = Tsunami.filter(params[:year], params[:mag])
  end

  # GET /tsunamis/1
  # GET /tsunamis/1.json
  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tsunami
    @tsunami = Tsunami.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def tsunami_params
    params.require(:tsunami).permit(:Date, :Time, :SameDayAs, :Focal_Depth, :Primary_Magnitude, :Country, :Location_Name, :Latitude, :Longitude, :Maximun_Water_Height, :Total_Deaths, :Total_Injuries, :Total_Damage_Million_Dollars, :Total_Houses_Destroyed, :Total_Houses_Damaged)
  end
end
