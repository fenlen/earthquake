class DeadliestsController < ApplicationController
  before_action :set_deadliest, only: [:show, :edit, :update, :destroy]

  # GET /deadliests
  # GET /deadliests.json
  def index
    @deadliests = Deadliest.all
  end

  # GET /deadliests/1
  # GET /deadliests/1.json
  def show
  end

  # GET /deadliests/new
  def new
    @deadliest = Deadliest.new
  end

  # GET /deadliests/1/edit
  def edit
  end

  # POST /deadliests
  # POST /deadliests.json
  def create
    @deadliest = Deadliest.new(deadliest_params)

    respond_to do |format|
      if @deadliest.save
        format.html { redirect_to @deadliest, notice: 'Deadliest was successfully created.' }
        format.json { render :show, status: :created, location: @deadliest }
      else
        format.html { render :new }
        format.json { render json: @deadliest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deadliests/1
  # PATCH/PUT /deadliests/1.json
  def update
    respond_to do |format|
      if @deadliest.update(deadliest_params)
        format.html { redirect_to @deadliest, notice: 'Deadliest was successfully updated.' }
        format.json { render :show, status: :ok, location: @deadliest }
      else
        format.html { render :edit }
        format.json { render json: @deadliest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deadliests/1
  # DELETE /deadliests/1.json
  def destroy
    @deadliest.destroy
    respond_to do |format|
      format.html { redirect_to deadliests_url, notice: 'Deadliest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deadliest
      @deadliest = Deadliest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deadliest_params
      params.require(:deadliest).permit(:EarthquakeCode, :Date, :Location, :Longitude, :Latitude, :deaths, :Magnitude)
    end
end
