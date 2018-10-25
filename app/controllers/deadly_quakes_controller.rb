class DeadlyQuakesController < ApplicationController
  before_action :set_deadly_quake, only: [:show, :edit, :update, :destroy]

  # GET /deadly_quakes
  # GET /deadly_quakes.json
  def index
    @deadly_quakes = DeadlyQuake.search(params[:term])
  end

  # GET /deadly_quakes/1
  # GET /deadly_quakes/1.json
  def show
  end

  # GET /deadly_quakes/new
  def new
    @deadly_quake = DeadlyQuake.new
  end

  # GET /deadly_quakes/1/edit
  def edit
  end

  # POST /deadly_quakes
  # POST /deadly_quakes.json
  def create
    @deadly_quake = DeadlyQuake.new(deadly_quake_params)

    respond_to do |format|
      if @deadly_quake.save
        format.html { redirect_to @deadly_quake, notice: 'Deadly quake was successfully created.' }
        format.json { render :show, status: :created, location: @deadly_quake }
      else
        format.html { render :new }
        format.json { render json: @deadly_quake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deadly_quakes/1
  # PATCH/PUT /deadly_quakes/1.json
  def update
    respond_to do |format|
      if @deadly_quake.update(deadly_quake_params)
        format.html { redirect_to @deadly_quake, notice: 'Deadly quake was successfully updated.' }
        format.json { render :show, status: :ok, location: @deadly_quake }
      else
        format.html { render :edit }
        format.json { render json: @deadly_quake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deadly_quakes/1
  # DELETE /deadly_quakes/1.json
  def destroy
    @deadly_quake.destroy
    respond_to do |format|
      format.html { redirect_to deadly_quakes_url, notice: 'Deadly quake was successfully destroyed.' }
      format.json { head :no_content }
    end
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
