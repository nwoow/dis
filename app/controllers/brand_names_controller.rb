class BrandNamesController < ApplicationController
  before_action :set_brand_name, only: [:show, :edit, :update, :destroy]

  # GET /brand_names
  # GET /brand_names.json
  def index
    @brand_names = BrandName.all
  end

  # GET /brand_names/1
  # GET /brand_names/1.json
  def show
  end

  # GET /brand_names/new
  def new
    @brand_name = BrandName.new
  end

  # GET /brand_names/1/edit
  def edit
  end

  # POST /brand_names
  # POST /brand_names.json
  def create
    @brand_name = BrandName.new(brand_name_params)

    respond_to do |format|
      if @brand_name.save
        format.html { redirect_to @brand_name, notice: 'Brand name was successfully created.' }
        format.json { render :show, status: :created, location: @brand_name }
      else
        format.html { render :new }
        format.json { render json: @brand_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brand_names/1
  # PATCH/PUT /brand_names/1.json
  def update
    respond_to do |format|
      if @brand_name.update(brand_name_params)
        format.html { redirect_to @brand_name, notice: 'Brand name was successfully updated.' }
        format.json { render :show, status: :ok, location: @brand_name }
      else
        format.html { render :edit }
        format.json { render json: @brand_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brand_names/1
  # DELETE /brand_names/1.json
  def destroy
    @brand_name.destroy
    respond_to do |format|
      format.html { redirect_to brand_names_url, notice: 'Brand name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand_name
      @brand_name = BrandName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brand_name_params
      params.require(:brand_name).permit(:brand_name, :generic_id,:data_source_id,:status)
    end
end
