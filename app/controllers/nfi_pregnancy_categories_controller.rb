class NfiPregnancyCategoriesController < ApplicationController
  before_action :set_nfi_pregnancy_category, only: [:show, :edit, :update, :destroy]

  # GET /nfi_pregnancy_categories
  # GET /nfi_pregnancy_categories.json
  def index
    @nfi_pregnancy_categories = NfiPregnancyCategory.all
  end

  # GET /nfi_pregnancy_categories/1
  # GET /nfi_pregnancy_categories/1.json
  def show
  end

  # GET /nfi_pregnancy_categories/new
  def new
    @nfi_pregnancy_category = NfiPregnancyCategory.new
  end

  # GET /nfi_pregnancy_categories/1/edit
  def edit
  end

  # POST /nfi_pregnancy_categories
  # POST /nfi_pregnancy_categories.json
  def create
    @nfi_pregnancy_category = NfiPregnancyCategory.new(nfi_pregnancy_category_params)

    respond_to do |format|
      if @nfi_pregnancy_category.save
        format.html { redirect_to @nfi_pregnancy_category, notice: 'Nfi pregnancy category was successfully created.' }
        format.json { render :show, status: :created, location: @nfi_pregnancy_category }
      else
        format.html { render :new }
        format.json { render json: @nfi_pregnancy_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nfi_pregnancy_categories/1
  # PATCH/PUT /nfi_pregnancy_categories/1.json
  def update
    respond_to do |format|
      if @nfi_pregnancy_category.update(nfi_pregnancy_category_params)
        format.html { redirect_to @nfi_pregnancy_category, notice: 'Nfi pregnancy category was successfully updated.' }
        format.json { render :show, status: :ok, location: @nfi_pregnancy_category }
      else
        format.html { render :edit }
        format.json { render json: @nfi_pregnancy_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nfi_pregnancy_categories/1
  # DELETE /nfi_pregnancy_categories/1.json
  def destroy
    @nfi_pregnancy_category.destroy
    respond_to do |format|
      format.html { redirect_to nfi_pregnancy_categories_url, notice: 'Nfi pregnancy category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nfi_pregnancy_category
      @nfi_pregnancy_category = NfiPregnancyCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nfi_pregnancy_category_params
      params.require(:nfi_pregnancy_category).permit(:preg_category_name, :preg_category_description, :data_source_id, :status)
    end
end
