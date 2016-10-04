class DispensibleGenericsController < ApplicationController
  before_action :set_dispensible_generic, only: [:show, :edit, :update, :destroy]

  # GET /dispensible_generics
  # GET /dispensible_generics.json
  def index
    @dispensible_generics = DispensibleGeneric.all
  end

  # GET /dispensible_generics/1
  # GET /dispensible_generics/1.json
  def show
  end

  # GET /dispensible_generics/new
  def new
    @dispensible_generic = DispensibleGeneric.new
  end

  # GET /dispensible_generics/1/edit
  def edit
  end

  # POST /dispensible_generics
  # POST /dispensible_generics.json
  def create
    @dispensible_generic = DispensibleGeneric.new(dispensible_generic_params)

    respond_to do |format|
      if @dispensible_generic.save
        format.html { redirect_to @dispensible_generic, notice: 'Dispensible generic was successfully created.' }
        format.json { render :show, status: :created, location: @dispensible_generic }
      else
        format.html { render :new }
        format.json { render json: @dispensible_generic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dispensible_generics/1
  # PATCH/PUT /dispensible_generics/1.json
  def update
    respond_to do |format|
      if @dispensible_generic.update(dispensible_generic_params)
        format.html { redirect_to @dispensible_generic, notice: 'Dispensible generic was successfully updated.' }
        format.json { render :show, status: :ok, location: @dispensible_generic }
      else
        format.html { render :edit }
        format.json { render json: @dispensible_generic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dispensible_generics/1
  # DELETE /dispensible_generics/1.json
  def destroy
    @dispensible_generic.destroy
    respond_to do |format|
      format.html { redirect_to dispensible_generics_url, notice: 'Dispensible generic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispensible_generic
      @dispensible_generic = DispensibleGeneric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dispensible_generic_params
      params.require(:dispensible_generic).permit(:generic_id, :route_id, :doseform_id, :generic_strength, :doseunit_id, :dispensible_qty, :doseunit_id, :dispensible_generic_text, :data_source_id, :status)
    end
end
