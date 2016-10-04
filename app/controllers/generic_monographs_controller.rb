class GenericMonographsController < ApplicationController
  before_action :set_generic_monograph, only: [:show, :edit, :update, :destroy]

  # GET /generic_monographs
  # GET /generic_monographs.json
  def index
    @generic_monographs = GenericMonograph.all
  end

  # GET /generic_monographs/1
  # GET /generic_monographs/1.json
  def show
  end

  # GET /generic_monographs/new
  def new
    @generic_monograph = GenericMonograph.new
  end

  # GET /generic_monographs/1/edit
  def edit
  end

  # POST /generic_monographs
  # POST /generic_monographs.json
  def create
    @generic_monograph = GenericMonograph.new(generic_monograph_params)

    respond_to do |format|
      if @generic_monograph.save
        format.html { redirect_to @generic_monograph, notice: 'Generic monograph was successfully created.' }
        format.json { render :show, status: :created, location: @generic_monograph }
      else
        format.html { render :new }
        format.json { render json: @generic_monograph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generic_monographs/1
  # PATCH/PUT /generic_monographs/1.json
  def update
    respond_to do |format|
      if @generic_monograph.update(generic_monograph_params)
        format.html { redirect_to @generic_monograph, notice: 'Generic monograph was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_monograph }
      else
        format.html { render :edit }
        format.json { render json: @generic_monograph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_monographs/1
  # DELETE /generic_monographs/1.json
  def destroy
    @generic_monograph.destroy
    respond_to do |format|
      format.html { redirect_to generic_monographs_url, notice: 'Generic monograph was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_monograph
      @generic_monograph = GenericMonograph.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_monograph_params
      params.require(:generic_monograph).permit(:generic_id, :dose_monograph, :contraindication_monograph, :precaution_monograph, :adverseeffect_monograph, :storage_monograph, :data_source_id, :status)
    end
end
