class AlcoholInteractionsController < ApplicationController
  before_action :set_alcohol_interaction, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /alcohol_interactions
  # GET /alcohol_interactions.json
  def index
    @alcohol_interactions = AlcoholInteraction.all
  end

  # GET /alcohol_interactions/1
  # GET /alcohol_interactions/1.json
  def show
  end

  # GET /alcohol_interactions/new
  def new
    @alcohol_interaction = AlcoholInteraction.new
  end

  # GET /alcohol_interactions/1/edit
  def edit
  end

  # POST /alcohol_interactions
  # POST /alcohol_interactions.json
  def create
    @alcohol_interaction = AlcoholInteraction.new(alcohol_interaction_params)

    respond_to do |format|
      if @alcohol_interaction.save
        format.html { redirect_to @alcohol_interaction, notice: 'Alcohol interaction was successfully created.' }
        format.json { render :show, status: :created, location: @alcohol_interaction }
      else
        format.html { render :new }
        format.json { render json: @alcohol_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alcohol_interactions/1
  # PATCH/PUT /alcohol_interactions/1.json
  def update
    respond_to do |format|
      if @alcohol_interaction.update(alcohol_interaction_params)
        format.html { redirect_to @alcohol_interaction, notice: 'Alcohol interaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @alcohol_interaction }
      else
        format.html { render :edit }
        format.json { render json: @alcohol_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alcohol_interactions/1
  # DELETE /alcohol_interactions/1.json
  def destroy
    @alcohol_interaction.destroy
    respond_to do |format|
      format.html { redirect_to alcohol_interactions_url, notice: 'Alcohol interaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alcohol_interaction
      @alcohol_interaction = AlcoholInteraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alcohol_interaction_params
       params.require(:alcohol_interaction).permit(:generic_id, :alcohol_interaction_type_id,:data_source_id,:status)
    end
end
