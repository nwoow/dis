class AdditiveFrequenciesController < ApplicationController
  before_action :set_additive_frequency, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /additive_frequencies
  # GET /additive_frequencies.json
  ###
  def index
    #@additive_frequencies = AdditiveFrequency.paginate(page: params[:page],:per_page => 5)
    @additive_frequencies = AdditiveFrequency.all
  end
  # GET /additive_frequencies/1
  # GET /additive_frequencies/1.json
    def show
    end


  # GET /additive_frequencies/new
  def new
    @additive_frequency = AdditiveFrequency.new
  end

  # GET /additive_frequencies/1/edit
  def edit
  end

  # POST /additive_frequencies
  # POST /additive_frequencies.json
  def create
    @additive_frequency = AdditiveFrequency.new(additive_frequency_params)

    respond_to do |format|
      if @additive_frequency.save
        format.html { redirect_to @additive_frequency, notice: 'Additive frequency was successfully created.' }
        format.json { render :show, status: :created, location: @additive_frequency }
      else
        format.html { render :new }
        format.json { render json: @additive_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /additive_frequencies/1
  # PATCH/PUT /additive_frequencies/1.json
  def update
    respond_to do |format|
      if @additive_frequency.update(additive_frequency_params)
        format.html { redirect_to @additive_frequency, notice: 'Additive frequency was successfully updated.' }
        format.json { render :show, status: :ok, location: @additive_frequency }
      else
        format.html { render :edit }
        format.json { render json: @additive_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /additive_frequencies/1
  # DELETE /additive_frequencies/1.json
  def destroy
    @additive_frequency.destroy
    respond_to do |format|
      format.html { redirect_to additive_frequencies_url, notice: 'Additive frequency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_additive_frequency
      @additive_frequency = AdditiveFrequency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def additive_frequency_params
      #params.fetch(:additive_frequency, {:frequency_id,:display_text, :data_source_data_source_id})
     params.require(:additive_frequency).permit(:display_text, :data_source_id,:description,:status)
    end
end
