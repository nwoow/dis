class AlcoholInteractionTypesController < ApplicationController
  before_action :set_alcohol_interaction_type, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /alcohol_interaction_types
  # GET /alcohol_interaction_types.json
  def index
    @alcohol_interaction_types = AlcoholInteractionType.all
  end

  # GET /alcohol_interaction_types/1
  # GET /alcohol_interaction_types/1.json
  def show
  end

  # GET /alcohol_interaction_types/new
  def new
    @alcohol_interaction_type = AlcoholInteractionType.new
  end

  # GET /alcohol_interaction_types/1/edit
  def edit
  end

  # POST /alcohol_interaction_types
  # POST /alcohol_interaction_types.json
  def create
    @alcohol_interaction_type = AlcoholInteractionType.new(alcohol_interaction_type_params)

    respond_to do |format|
      if @alcohol_interaction_type.save
        format.html { redirect_to @alcohol_interaction_type, notice: 'Alcohol interaction type was successfully created.' }
        format.json { render :show, status: :created, location: @alcohol_interaction_type }
      else
        format.html { render :new }
        format.json { render json: @alcohol_interaction_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alcohol_interaction_types/1
  # PATCH/PUT /alcohol_interaction_types/1.json
  def update
    respond_to do |format|
      if @alcohol_interaction_type.update(alcohol_interaction_type_params)
        format.html { redirect_to @alcohol_interaction_type, notice: 'Alcohol interaction type was successfully updated.' }
        format.json { render :show, status: :ok, location: @alcohol_interaction_type }
      else
        format.html { render :edit }
        format.json { render json: @alcohol_interaction_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alcohol_interaction_types/1
  # DELETE /alcohol_interaction_types/1.json
  def destroy
    @alcohol_interaction_type.destroy
    respond_to do |format|
      format.html { redirect_to alcohol_interaction_types_url, notice: 'Alcohol interaction type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alcohol_interaction_type
      @alcohol_interaction_type = AlcoholInteractionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alcohol_interaction_type_params
      params.require(:alcohol_interaction_type).permit(:alcohol_interaction_type_name, :alcohol_interaction_type_text,:data_source_id)
    end
end
