class LactationsController < ApplicationController
  before_action :set_lactation, only: [:show, :edit, :update, :destroy]

  # GET /lactations
  # GET /lactations.json
  def index
    @lactations = Lactation.all
  end

  # GET /lactations/1
  # GET /lactations/1.json
  def show
  end

  # GET /lactations/new
  def new
    @lactation = Lactation.new
  end

  # GET /lactations/1/edit
  def edit
  end

  # POST /lactations
  # POST /lactations.json
  def create
    @lactation = Lactation.new(lactation_params)

    respond_to do |format|
      if @lactation.save
        format.html { redirect_to @lactation, notice: 'Lactation was successfully created.' }
        format.json { render :show, status: :created, location: @lactation }
      else
        format.html { render :new }
        format.json { render json: @lactation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lactations/1
  # PATCH/PUT /lactations/1.json
  def update
    respond_to do |format|
      if @lactation.update(lactation_params)
        format.html { redirect_to @lactation, notice: 'Lactation was successfully updated.' }
        format.json { render :show, status: :ok, location: @lactation }
      else
        format.html { render :edit }
        format.json { render json: @lactation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lactations/1
  # DELETE /lactations/1.json
  def destroy
    @lactation.destroy
    respond_to do |format|
      format.html { redirect_to lactations_url, notice: 'Lactation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lactation
      @lactation = Lactation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lactation_params
      params.require(:lactation).permit(:generic_id, :lactation_text, :data_source_id, :lactation_id, :status)
    end
end
