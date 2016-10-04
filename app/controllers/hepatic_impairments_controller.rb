class HepaticImpairmentsController < ApplicationController
  before_action :set_hepatic_impairment, only: [:show, :edit, :update, :destroy]

  # GET /hepatic_impairments
  # GET /hepatic_impairments.json
  def index
    @hepatic_impairments = HepaticImpairment.all
  end

  # GET /hepatic_impairments/1
  # GET /hepatic_impairments/1.json
  def show
  end

  # GET /hepatic_impairments/new
  def new
    @hepatic_impairment = HepaticImpairment.new
  end

  # GET /hepatic_impairments/1/edit
  def edit
  end

  # POST /hepatic_impairments
  # POST /hepatic_impairments.json
  def create
    @hepatic_impairment = HepaticImpairment.new(hepatic_impairment_params)

    respond_to do |format|
      if @hepatic_impairment.save
        format.html { redirect_to @hepatic_impairment, notice: 'Hepatic impairment was successfully created.' }
        format.json { render :show, status: :created, location: @hepatic_impairment }
      else
        format.html { render :new }
        format.json { render json: @hepatic_impairment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hepatic_impairments/1
  # PATCH/PUT /hepatic_impairments/1.json
  def update
    respond_to do |format|
      if @hepatic_impairment.update(hepatic_impairment_params)
        format.html { redirect_to @hepatic_impairment, notice: 'Hepatic impairment was successfully updated.' }
        format.json { render :show, status: :ok, location: @hepatic_impairment }
      else
        format.html { render :edit }
        format.json { render json: @hepatic_impairment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hepatic_impairments/1
  # DELETE /hepatic_impairments/1.json
  def destroy
    @hepatic_impairment.destroy
    respond_to do |format|
      format.html { redirect_to hepatic_impairments_url, notice: 'Hepatic impairment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hepatic_impairment
      @hepatic_impairment = HepaticImpairment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hepatic_impairment_params
      params.require(:hepatic_impairment).permit(:generic_id, :hepatic_imp_instructions, :hepatic_imp_text, :data_source_id, :status)
    end
end
