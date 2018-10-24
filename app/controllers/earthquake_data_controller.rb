class EarthquakeDataController < ApplicationController
  before_action :set_earthquake_datum, only: [:show, :edit, :update, :destroy]

  # GET /earthquake_data
  # GET /earthquake_data.json
  def index
    @earthquake_data = EarthquakeDatum.all
  end

  # GET /earthquake_data/1
  # GET /earthquake_data/1.json
  def show
  end

  # GET /earthquake_data/new
  def new
    @earthquake_datum = EarthquakeDatum.new
  end

  # GET /earthquake_data/1/edit
  def edit
  end

  # POST /earthquake_data
  # POST /earthquake_data.json
  def create
    @earthquake_datum = EarthquakeDatum.new(earthquake_datum_params)

    respond_to do |format|
      if @earthquake_datum.save
        format.html { redirect_to @earthquake_datum, notice: 'Earthquake datum was successfully created.' }
        format.json { render :show, status: :created, location: @earthquake_datum }
      else
        format.html { render :new }
        format.json { render json: @earthquake_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /earthquake_data/1
  # PATCH/PUT /earthquake_data/1.json
  def update
    respond_to do |format|
      if @earthquake_datum.update(earthquake_datum_params)
        format.html { redirect_to @earthquake_datum, notice: 'Earthquake datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @earthquake_datum }
      else
        format.html { render :edit }
        format.json { render json: @earthquake_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /earthquake_data/1
  # DELETE /earthquake_data/1.json
  def destroy
    @earthquake_datum.destroy
    respond_to do |format|
      format.html { redirect_to earthquake_data_url, notice: 'Earthquake datum was successfully destroyed.' }
      format.json { head :no_content }
    end
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
