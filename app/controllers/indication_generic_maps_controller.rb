class IndicationGenericMapsController < ApplicationController
  before_action :set_indication_generic_map, only: [:show, :edit, :update, :destroy]

  # GET /indication_generic_maps
  # GET /indication_generic_maps.json
  def index
    @indication_generic_maps = IndicationGenericMap.all
  end

  # GET /indication_generic_maps/1
  # GET /indication_generic_maps/1.json
  def show
  end

  # GET /indication_generic_maps/new
  def new
    @indication_generic_map = IndicationGenericMap.new
  end

  # GET /indication_generic_maps/1/edit
  def edit
  end

  # POST /indication_generic_maps
  # POST /indication_generic_maps.json
  def create
    @indication_generic_map = IndicationGenericMap.new(indication_generic_map_params)

    respond_to do |format|
      if @indication_generic_map.save
        format.html { redirect_to @indication_generic_map, notice: 'Indication generic map was successfully created.' }
        format.json { render :show, status: :created, location: @indication_generic_map }
      else
        format.html { render :new }
        format.json { render json: @indication_generic_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indication_generic_maps/1
  # PATCH/PUT /indication_generic_maps/1.json
  def update
    respond_to do |format|
      if @indication_generic_map.update(indication_generic_map_params)
        format.html { redirect_to @indication_generic_map, notice: 'Indication generic map was successfully updated.' }
        format.json { render :show, status: :ok, location: @indication_generic_map }
      else
        format.html { render :edit }
        format.json { render json: @indication_generic_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indication_generic_maps/1
  # DELETE /indication_generic_maps/1.json
  def destroy
    @indication_generic_map.destroy
    respond_to do |format|
      format.html { redirect_to indication_generic_maps_url, notice: 'Indication generic map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indication_generic_map
      @indication_generic_map = IndicationGenericMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indication_generic_map_params
      params.require(:indication_generic_map).permit(:indication_id, :generic_id, :data_source_id, :status)
    end
end
