class NfiIndicationsController < ApplicationController
  before_action :set_nfi_indication, only: [:show, :edit, :update, :destroy]

  # GET /nfi_indications
  # GET /nfi_indications.json
  def index
    @nfi_indications = NfiIndication.all
  end

  # GET /nfi_indications/1
  # GET /nfi_indications/1.json
  def show
  end

  # GET /nfi_indications/new
  def new
    @nfi_indication = NfiIndication.new
  end

  # GET /nfi_indications/1/edit
  def edit
  end

  # POST /nfi_indications
  # POST /nfi_indications.json
  def create
    @nfi_indication = NfiIndication.new(nfi_indication_params)

    respond_to do |format|
      if @nfi_indication.save
        format.html { redirect_to @nfi_indication, notice: 'Nfi indication was successfully created.' }
        format.json { render :show, status: :created, location: @nfi_indication }
      else
        format.html { render :new }
        format.json { render json: @nfi_indication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nfi_indications/1
  # PATCH/PUT /nfi_indications/1.json
  def update
    respond_to do |format|
      if @nfi_indication.update(nfi_indication_params)
        format.html { redirect_to @nfi_indication, notice: 'Nfi indication was successfully updated.' }
        format.json { render :show, status: :ok, location: @nfi_indication }
      else
        format.html { render :edit }
        format.json { render json: @nfi_indication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nfi_indications/1
  # DELETE /nfi_indications/1.json
  def destroy
    @nfi_indication.destroy
    respond_to do |format|
      format.html { redirect_to nfi_indications_url, notice: 'Nfi indication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nfi_indication
      @nfi_indication = NfiIndication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nfi_indication_params
      params.require(:nfi_indication).permit(:indication_name, :data_source_id, :status)
    end
end
