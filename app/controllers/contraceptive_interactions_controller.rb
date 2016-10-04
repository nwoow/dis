class ContraceptiveInteractionsController < ApplicationController
  before_action :set_contraceptive_interaction, only: [:show, :edit, :update, :destroy]

  # GET /contraceptive_interactions
  # GET /contraceptive_interactions.json
  def index
    @contraceptive_interactions = ContraceptiveInteraction.all
  end

  # GET /contraceptive_interactions/1
  # GET /contraceptive_interactions/1.json
  def show
  end

  # GET /contraceptive_interactions/new
  def new
    @contraceptive_interaction = ContraceptiveInteraction.new
  end

  # GET /contraceptive_interactions/1/edit
  def edit
  end

  # POST /contraceptive_interactions
  # POST /contraceptive_interactions.json
  def create
    @contraceptive_interaction = ContraceptiveInteraction.new(contraceptive_interaction_params)

    respond_to do |format|
      if @contraceptive_interaction.save
        format.html { redirect_to @contraceptive_interaction, notice: 'Contraceptive interaction was successfully created.' }
        format.json { render :show, status: :created, location: @contraceptive_interaction }
      else
        format.html { render :new }
        format.json { render json: @contraceptive_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contraceptive_interactions/1
  # PATCH/PUT /contraceptive_interactions/1.json
  def update
    respond_to do |format|
      if @contraceptive_interaction.update(contraceptive_interaction_params)
        format.html { redirect_to @contraceptive_interaction, notice: 'Contraceptive interaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @contraceptive_interaction }
      else
        format.html { render :edit }
        format.json { render json: @contraceptive_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contraceptive_interactions/1
  # DELETE /contraceptive_interactions/1.json
  def destroy
    @contraceptive_interaction.destroy
    respond_to do |format|
      format.html { redirect_to contraceptive_interactions_url, notice: 'Contraceptive interaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contraceptive_interaction
      @contraceptive_interaction = ContraceptiveInteraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contraceptive_interaction_params
      params.require(:contraceptive_interaction).permit(:generic_id, :contraceptive_interaction_text, :data_source_id, :status)
    end
end
