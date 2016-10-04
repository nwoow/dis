class DoseunitsController < ApplicationController
  before_action :set_doseunit, only: [:show, :edit, :update, :destroy]

  # GET /doseunits
  # GET /doseunits.json
  def index
    @doseunits = Doseunit.all
  end

  # GET /doseunits/1
  # GET /doseunits/1.json
  def show
  end

  # GET /doseunits/new
  def new
    @doseunit = Doseunit.new
  end

  # GET /doseunits/1/edit
  def edit
  end

  # POST /doseunits
  # POST /doseunits.json
  def create
    @doseunit = Doseunit.new(doseunit_params)

    respond_to do |format|
      if @doseunit.save
        format.html { redirect_to @doseunit, notice: 'Doseunit was successfully created.' }
        format.json { render :show, status: :created, location: @doseunit }
      else
        format.html { render :new }
        format.json { render json: @doseunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doseunits/1
  # PATCH/PUT /doseunits/1.json
  def update
    respond_to do |format|
      if @doseunit.update(doseunit_params)
        format.html { redirect_to @doseunit, notice: 'Doseunit was successfully updated.' }
        format.json { render :show, status: :ok, location: @doseunit }
      else
        format.html { render :edit }
        format.json { render json: @doseunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doseunits/1
  # DELETE /doseunits/1.json
  def destroy
    @doseunit.destroy
    respond_to do |format|
      format.html { redirect_to doseunits_url, notice: 'Doseunit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doseunit
      @doseunit = Doseunit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doseunit_params
      params.require(:doseunit).permit(:doseunit_name, :doseunit_abbr, :data_source_id, :status)
    end
end
