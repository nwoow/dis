class DoseFormsController < ApplicationController
  before_action :set_dose_form, only: [:show, :edit, :update, :destroy]

  # GET /dose_forms
  # GET /dose_forms.json
  def index
    @dose_forms = DoseForm.all
  end

  # GET /dose_forms/1
  # GET /dose_forms/1.json
  def show
  end

  # GET /dose_forms/new
  def new
    @dose_form = DoseForm.new
  end

  # GET /dose_forms/1/edit
  def edit
  end

  # POST /dose_forms
  # POST /dose_forms.json
  def create
    @dose_form = DoseForm.new(dose_form_params)

    respond_to do |format|
      if @dose_form.save
        format.html { redirect_to @dose_form, notice: 'Dose form was successfully created.' }
        format.json { render :show, status: :created, location: @dose_form }
      else
        format.html { render :new }
        format.json { render json: @dose_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dose_forms/1
  # PATCH/PUT /dose_forms/1.json
  def update
    respond_to do |format|
      if @dose_form.update(dose_form_params)
        format.html { redirect_to @dose_form, notice: 'Dose form was successfully updated.' }
        format.json { render :show, status: :ok, location: @dose_form }
      else
        format.html { render :edit }
        format.json { render json: @dose_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dose_forms/1
  # DELETE /dose_forms/1.json
  def destroy
    @dose_form.destroy
    respond_to do |format|
      format.html { redirect_to dose_forms_url, notice: 'Dose form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dose_form
      @dose_form = DoseForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dose_form_params
      params.require(:dose_form).permit(:doseform_name, :doseform_abbr, :data_source_id, :status)
    end
end
