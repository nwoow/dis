class DoseformDoseunitsController < ApplicationController
  before_action :set_doseform_doseunit, only: [:show, :edit, :update, :destroy]

  # GET /doseform_doseunits
  # GET /doseform_doseunits.json
  def index
    @doseform_doseunits = DoseformDoseunit.all
  end

  # GET /doseform_doseunits/1
  # GET /doseform_doseunits/1.json
  def show
  end

  # GET /doseform_doseunits/new
  def new
    @doseform_doseunit = DoseformDoseunit.new
  end

  # GET /doseform_doseunits/1/edit
  def edit
  end

  # POST /doseform_doseunits
  # POST /doseform_doseunits.json
  def create
    @doseform_doseunit = DoseformDoseunit.new(doseform_doseunit_params)

    respond_to do |format|
      if @doseform_doseunit.save
        format.html { redirect_to @doseform_doseunit, notice: 'Doseform doseunit was successfully created.' }
        format.json { render :show, status: :created, location: @doseform_doseunit }
      else
        format.html { render :new }
        format.json { render json: @doseform_doseunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doseform_doseunits/1
  # PATCH/PUT /doseform_doseunits/1.json
  def update
    respond_to do |format|
      if @doseform_doseunit.update(doseform_doseunit_params)
        format.html { redirect_to @doseform_doseunit, notice: 'Doseform doseunit was successfully updated.' }
        format.json { render :show, status: :ok, location: @doseform_doseunit }
      else
        format.html { render :edit }
        format.json { render json: @doseform_doseunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doseform_doseunits/1
  # DELETE /doseform_doseunits/1.json
  def destroy
    @doseform_doseunit.destroy
    respond_to do |format|
      format.html { redirect_to doseform_doseunits_url, notice: 'Doseform doseunit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doseform_doseunit
      @doseform_doseunit = DoseformDoseunit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doseform_doseunit_params
      params.require(:doseform_doseunit).permit(:doseform_id, :doseunit_id, :is_default)
    end
end
