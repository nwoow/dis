class CombinationPackagesController < ApplicationController
  before_action :set_combination_package, only: [:show, :edit, :update, :destroy]

  # GET /combination_packages
  # GET /combination_packages.json
  def index
    @combination_packages = CombinationPackage.all
  end

  # GET /combination_packages/1
  # GET /combination_packages/1.json
  def show
  end

  # GET /combination_packages/new
  def new
    @combination_package = CombinationPackage.new
  end

  # GET /combination_packages/1/edit
  def edit
  end

  # POST /combination_packages
  # POST /combination_packages.json
  def create
    @combination_package = CombinationPackage.new(combination_package_params)

    respond_to do |format|
      if @combination_package.save
        format.html { redirect_to @combination_package, notice: 'Combination package was successfully created.' }
        format.json { render :show, status: :created, location: @combination_package }
      else
        format.html { render :new }
        format.json { render json: @combination_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combination_packages/1
  # PATCH/PUT /combination_packages/1.json
  def update
    respond_to do |format|
      if @combination_package.update(combination_package_params)
        format.html { redirect_to @combination_package, notice: 'Combination package was successfully updated.' }
        format.json { render :show, status: :ok, location: @combination_package }
      else
        format.html { render :edit }
        format.json { render json: @combination_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combination_packages/1
  # DELETE /combination_packages/1.json
  def destroy
    @combination_package.destroy
    respond_to do |format|
      format.html { redirect_to combination_packages_url, notice: 'Combination package was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combination_package
      @combination_package = CombinationPackage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def combination_package_params
      params.require(:combination_package).permit(:brand_name_id, :manufacturer_id,:dispensible_combination_id, :combination_text,:package_qty, :package_type_id, :price ,:combination_package_text ,:data_source_id, :status)
    end
end
