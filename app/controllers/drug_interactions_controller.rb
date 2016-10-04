class DrugInteractionsController < ApplicationController
  before_action :set_drug_interaction, only: [:show, :edit, :update, :destroy]

  # GET /drug_interactions
  # GET /drug_interactions.json
  def index
    @drug_interactions = DrugInteraction.all
  end

  # GET /drug_interactions/1
  # GET /drug_interactions/1.json
  def show
  end

  # GET /drug_interactions/new
  def new
    @drug_interaction = DrugInteraction.new
  end

  # GET /drug_interactions/1/edit
  def edit
  end

  # POST /drug_interactions
  # POST /drug_interactions.json
  def create
    @drug_interaction = DrugInteraction.new(drug_interaction_params)

    respond_to do |format|
      if @drug_interaction.save
        format.html { redirect_to @drug_interaction, notice: 'Drug interaction was successfully created.' }
        format.json { render :show, status: :created, location: @drug_interaction }
      else
        format.html { render :new }
        format.json { render json: @drug_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drug_interactions/1
  # PATCH/PUT /drug_interactions/1.json
  def update
    respond_to do |format|
      if @drug_interaction.update(drug_interaction_params)
        format.html { redirect_to @drug_interaction, notice: 'Drug interaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @drug_interaction }
      else
        format.html { render :edit }
        format.json { render json: @drug_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drug_interactions/1
  # DELETE /drug_interactions/1.json
  def destroy
    @drug_interaction.destroy
    respond_to do |format|
      format.html { redirect_to drug_interactions_url, notice: 'Drug interaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drug_interaction
      @drug_interaction = DrugInteraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drug_interaction_params
      params.require(:drug_interaction).permit(:first_generic_id, :second_generic_id, :drug_interaction_text, :data_source_id, :status)
    end
end
