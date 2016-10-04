class GenericTypesController < ApplicationController
  before_action :set_generic_type, only: [:show, :edit, :update, :destroy]

  # GET /generic_types
  # GET /generic_types.json
  def index
    @generic_types = GenericType.all
  end

  # GET /generic_types/1
  # GET /generic_types/1.json
  def show
  end

  # GET /generic_types/new
  def new
    @generic_type = GenericType.new
  end

  # GET /generic_types/1/edit
  def edit
  end

  # POST /generic_types
  # POST /generic_types.json
  def create
    @generic_type = GenericType.new(generic_type_params)

    respond_to do |format|
      if @generic_type.save
        format.html { redirect_to @generic_type, notice: 'Generic type was successfully created.' }
        format.json { render :show, status: :created, location: @generic_type }
      else
        format.html { render :new }
        format.json { render json: @generic_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generic_types/1
  # PATCH/PUT /generic_types/1.json
  def update
    respond_to do |format|
      if @generic_type.update(generic_type_params)
        format.html { redirect_to @generic_type, notice: 'Generic type was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_type }
      else
        format.html { render :edit }
        format.json { render json: @generic_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_types/1
  # DELETE /generic_types/1.json
  def destroy
    @generic_type.destroy
    respond_to do |format|
      format.html { redirect_to generic_types_url, notice: 'Generic type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_type
      @generic_type = GenericType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_type_params
      params.require(:generic_type).permit(:generic_type_name, :data_source_id, :status)
    end
end
