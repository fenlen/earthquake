class DeadlyQuakesController < ApplicationController
  before_action :set_deadly_quake, only: [:show, :edit, :update, :destroy]

  # GET /deadly_quakes
  # GET /deadly_quakes.json
  def index
    @deadly_quakes = DeadlyQuake.filter(params[:year], params[:mag])
  end

  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_deadly_quake
    @deadly_quake = DeadlyQuake.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def deadly_quake_params
    params.require(:deadly_quake).permit(:EqCode, :Date, :Location, :Longitude, :Latitude, :Deaths, :Magnitude)
  end
end
