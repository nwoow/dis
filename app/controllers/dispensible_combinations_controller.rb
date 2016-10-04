class DispensibleCombinationsController < ApplicationController
  before_action :set_dispensible_combination, only: [:show, :edit, :update, :destroy]

  # GET /dispensible_combinations
  # GET /dispensible_combinations.json
  def index
    @dispensible_combinations = DispensibleCombination.all
  end

  # GET /dispensible_combinations/1
  # GET /dispensible_combinations/1.json
  def show
  end

  # GET /dispensible_combinations/new
  def new
    @dispensible_combination = DispensibleCombination.new
  end

  # GET /dispensible_combinations/1/edit
  def edit
  end

  # POST /dispensible_combinations
  # POST /dispensible_combinations.json
  def create
    @dispensible_combination = DispensibleCombination.new(dispensible_combination_params)

    respond_to do |format|
      if @dispensible_combination.save
        format.html { redirect_to @dispensible_combination, notice: 'Dispensible combination was successfully created.' }
        format.json { render :show, status: :created, location: @dispensible_combination }
      else
        format.html { render :new }
        format.json { render json: @dispensible_combination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dispensible_combinations/1
  # PATCH/PUT /dispensible_combinations/1.json
  def update
    respond_to do |format|
      if @dispensible_combination.update(dispensible_combination_params)
        format.html { redirect_to @dispensible_combination, notice: 'Dispensible combination was successfully updated.' }
        format.json { render :show, status: :ok, location: @dispensible_combination }
      else
        format.html { render :edit }
        format.json { render json: @dispensible_combination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dispensible_combinations/1
  # DELETE /dispensible_combinations/1.json
  def destroy
    @dispensible_combination.destroy
    respond_to do |format|
      format.html { redirect_to dispensible_combinations_url, notice: 'Dispensible combination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispensible_combination
      @dispensible_combination = DispensibleCombination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dispensible_combination_params
      params.require(:dispensible_combination).permit(:generic_id, :doseform_id, :route_id, :dispensible_combination_text, :data_source_id, :status)
    end
end
