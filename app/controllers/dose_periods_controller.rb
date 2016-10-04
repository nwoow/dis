class DosePeriodsController < ApplicationController
  before_action :set_dose_period, only: [:show, :edit, :update, :destroy]

  # GET /dose_periods
  # GET /dose_periods.json
  def index
    @dose_periods = DosePeriod.all
  end

  # GET /dose_periods/1
  # GET /dose_periods/1.json
  def show
  end

  # GET /dose_periods/new
  def new
    @dose_period = DosePeriod.new
  end

  # GET /dose_periods/1/edit
  def edit
  end

  # POST /dose_periods
  # POST /dose_periods.json
  def create
    @dose_period = DosePeriod.new(dose_period_params)

    respond_to do |format|
      if @dose_period.save
        format.html { redirect_to @dose_period, notice: 'Dose period was successfully created.' }
        format.json { render :show, status: :created, location: @dose_period }
      else
        format.html { render :new }
        format.json { render json: @dose_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dose_periods/1
  # PATCH/PUT /dose_periods/1.json
  def update
    respond_to do |format|
      if @dose_period.update(dose_period_params)
        format.html { redirect_to @dose_period, notice: 'Dose period was successfully updated.' }
        format.json { render :show, status: :ok, location: @dose_period }
      else
        format.html { render :edit }
        format.json { render json: @dose_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dose_periods/1
  # DELETE /dose_periods/1.json
  def destroy
    @dose_period.destroy
    respond_to do |format|
      format.html { redirect_to dose_periods_url, notice: 'Dose period was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dose_period
      @dose_period = DosePeriod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dose_period_params
      params.require(:dose_period).permit(:dose_period_name, :dose_period_abbr, :data_source_id, :status)
    end
end
