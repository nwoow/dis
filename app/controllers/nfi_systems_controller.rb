class NfiSystemsController < ApplicationController
  before_action :set_nfi_system, only: [:show, :edit, :update, :destroy]

  # GET /nfi_systems
  # GET /nfi_systems.json
  def index
    @nfi_systems = NfiSystem.all
  end

  # GET /nfi_systems/1
  # GET /nfi_systems/1.json
  def show
  end

  # GET /nfi_systems/new
  def new
    @nfi_system = NfiSystem.new
  end

  # GET /nfi_systems/1/edit
  def edit
  end

  # POST /nfi_systems
  # POST /nfi_systems.json
  def create
    @nfi_system = NfiSystem.new(nfi_system_params)

    respond_to do |format|
      if @nfi_system.save
        format.html { redirect_to @nfi_system, notice: 'Nfi system was successfully created.' }
        format.json { render :show, status: :created, location: @nfi_system }
      else
        format.html { render :new }
        format.json { render json: @nfi_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nfi_systems/1
  # PATCH/PUT /nfi_systems/1.json
  def update
    respond_to do |format|
      if @nfi_system.update(nfi_system_params)
        format.html { redirect_to @nfi_system, notice: 'Nfi system was successfully updated.' }
        format.json { render :show, status: :ok, location: @nfi_system }
      else
        format.html { render :edit }
        format.json { render json: @nfi_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nfi_systems/1
  # DELETE /nfi_systems/1.json
  def destroy
    @nfi_system.destroy
    respond_to do |format|
      format.html { redirect_to nfi_systems_url, notice: 'Nfi system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nfi_system
      @nfi_system = NfiSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nfi_system_params
      params.require(:nfi_system).permit(:system_name, :sysem_description, :data_source_id, :sub_system_exist, :status)
    end
end
