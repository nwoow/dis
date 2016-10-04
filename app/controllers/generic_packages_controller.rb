class GenericPackagesController < ApplicationController
  before_action :set_generic_package, only: [:show, :edit, :update, :destroy]

  # GET /generic_packages
  # GET /generic_packages.json
  def index
    @generic_packages = GenericPackage.all
  end

  # GET /generic_packages/1
  # GET /generic_packages/1.json
  def show
  end

  # GET /generic_packages/new
  def new
    @generic_package = GenericPackage.new
  end

  # GET /generic_packages/1/edit
  def edit
  end

  # POST /generic_packages
  # POST /generic_packages.json
  def create
    @generic_package = GenericPackage.new(generic_package_params)

    respond_to do |format|
      if @generic_package.save
        format.html { redirect_to @generic_package, notice: 'Generic package was successfully created.' }
        format.json { render :show, status: :created, location: @generic_package }
      else
        format.html { render :new }
        format.json { render json: @generic_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generic_packages/1
  # PATCH/PUT /generic_packages/1.json
  def update
    respond_to do |format|
      if @generic_package.update(generic_package_params)
        format.html { redirect_to @generic_package, notice: 'Generic package was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_package }
      else
        format.html { render :edit }
        format.json { render json: @generic_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_packages/1
  # DELETE /generic_packages/1.json
  def destroy
    @generic_package.destroy
    respond_to do |format|
      format.html { redirect_to generic_packages_url, notice: 'Generic package was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_package
      @generic_package = GenericPackage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_package_params
      params.require(:generic_package).permit(:brand_name_id, :manufacturer_id, :dispensible_generic_id, :package_qty, :package_type_id, :price, :generic_package_text, :data_source_id, :status)
    end
end
