class TsunamisController < ApplicationController
  before_action :set_tsunami, only: [:show, :edit, :update, :destroy]

  # GET /tsunamis
  # GET /tsunamis.json
  def index
    @tsunamis = Tsunami.search(params[:term])
  end

  # GET /tsunamis/1
  # GET /tsunamis/1.json
  def show
  end

  # GET /tsunamis/new
  def new
    @tsunami = Tsunami.new
  end

  # GET /tsunamis/1/edit
  def edit
  end

  # POST /tsunamis
  # POST /tsunamis.json
  def create
    @tsunami = Tsunami.new(tsunami_params)

    respond_to do |format|
      if @tsunami.save
        format.html { redirect_to @tsunami, notice: 'Tsunami was successfully created.' }
        format.json { render :show, status: :created, location: @tsunami }
      else
        format.html { render :new }
        format.json { render json: @tsunami.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tsunamis/1
  # PATCH/PUT /tsunamis/1.json
  def update
    respond_to do |format|
      if @tsunami.update(tsunami_params)
        format.html { redirect_to @tsunami, notice: 'Tsunami was successfully updated.' }
        format.json { render :show, status: :ok, location: @tsunami }
      else
        format.html { render :edit }
        format.json { render json: @tsunami.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tsunamis/1
  # DELETE /tsunamis/1.json
  def destroy
    @tsunami.destroy
    respond_to do |format|
      format.html { redirect_to tsunamis_url, notice: 'Tsunami was successfully destroyed.' }
      format.json { head :no_content }
    end
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
