class GenericPackageIngredientsController < ApplicationController
  before_action :set_generic_package_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /generic_package_ingredients
  # GET /generic_package_ingredients.json
  def index
    @generic_package_ingredients = GenericPackageIngredient.all
  end

  # GET /generic_package_ingredients/1
  # GET /generic_package_ingredients/1.json
  def show
  end

  # GET /generic_package_ingredients/new
  def new
    @generic_package_ingredient = GenericPackageIngredient.new
  end

  # GET /generic_package_ingredients/1/edit
  def edit
  end

  # POST /generic_package_ingredients
  # POST /generic_package_ingredients.json
  def create
    @generic_package_ingredient = GenericPackageIngredient.new(generic_package_ingredient_params)

    respond_to do |format|
      if @generic_package_ingredient.save
        format.html { redirect_to @generic_package_ingredient, notice: 'Generic package ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @generic_package_ingredient }
      else
        format.html { render :new }
        format.json { render json: @generic_package_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generic_package_ingredients/1
  # PATCH/PUT /generic_package_ingredients/1.json
  def update
    respond_to do |format|
      if @generic_package_ingredient.update(generic_package_ingredient_params)
        format.html { redirect_to @generic_package_ingredient, notice: 'Generic package ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_package_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @generic_package_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_package_ingredients/1
  # DELETE /generic_package_ingredients/1.json
  def destroy
    @generic_package_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to generic_package_ingredients_url, notice: 'Generic package ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_package_ingredient
      @generic_package_ingredient = GenericPackageIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_package_ingredient_params
      params.require(:generic_package_ingredient).permit(:generic_package_id, :ingredient_id, :ingredient_qty, :doseunit_id, :data_source_id, :status)
    end
end
