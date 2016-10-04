class NfiSubSystemsController < ApplicationController
  before_action :set_nfi_sub_system, only: [:show, :edit, :update, :destroy]

  # GET /nfi_sub_systems
  # GET /nfi_sub_systems.json
  def index
    @nfi_sub_systems = NfiSubSystem.all
  end

  # GET /nfi_sub_systems/1
  # GET /nfi_sub_systems/1.json
  def show
  end

  # GET /nfi_sub_systems/new
  def new
    @nfi_sub_system = NfiSubSystem.new
  end

  # GET /nfi_sub_systems/1/edit
  def edit
  end

  # POST /nfi_sub_systems
  # POST /nfi_sub_systems.json
  def create
    @nfi_sub_system = NfiSubSystem.new(nfi_sub_system_params)

    respond_to do |format|
      if @nfi_sub_system.save
        format.html { redirect_to @nfi_sub_system, notice: 'Nfi sub system was successfully created.' }
        format.json { render :show, status: :created, location: @nfi_sub_system }
      else
        format.html { render :new }
        format.json { render json: @nfi_sub_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nfi_sub_systems/1
  # PATCH/PUT /nfi_sub_systems/1.json
  def update
    respond_to do |format|
      if @nfi_sub_system.update(nfi_sub_system_params)
        format.html { redirect_to @nfi_sub_system, notice: 'Nfi sub system was successfully updated.' }
        format.json { render :show, status: :ok, location: @nfi_sub_system }
      else
        format.html { render :edit }
        format.json { render json: @nfi_sub_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nfi_sub_systems/1
  # DELETE /nfi_sub_systems/1.json
  def destroy
    @nfi_sub_system.destroy
    respond_to do |format|
      format.html { redirect_to nfi_sub_systems_url, notice: 'Nfi sub system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nfi_sub_system
      @nfi_sub_system = NfiSubSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nfi_sub_system_params
      params.require(:nfi_sub_system).permit(:sub_system_description, :system_id, :data_source_id, :status)
    end
end
