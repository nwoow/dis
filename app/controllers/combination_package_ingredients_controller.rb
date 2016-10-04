class CombinationPackageIngredientsController < ApplicationController
  before_action :set_combination_package_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /combination_package_ingredients
  # GET /combination_package_ingredients.json
  def index
    @combination_package_ingredients = CombinationPackageIngredient.all
  end

  # GET /combination_package_ingredients/1
  # GET /combination_package_ingredients/1.json
  def show
  end

  # GET /combination_package_ingredients/new
  def new
    @combination_package_ingredient = CombinationPackageIngredient.new
  end

  # GET /combination_package_ingredients/1/edit
  def edit
  end

  # POST /combination_package_ingredients
  # POST /combination_package_ingredients.json
  def create
    @combination_package_ingredient = CombinationPackageIngredient.new(combination_package_ingredient_params)

    respond_to do |format|
      if @combination_package_ingredient.save
        format.html { redirect_to @combination_package_ingredient, notice: 'Combination package ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @combination_package_ingredient }
      else
        format.html { render :new }
        format.json { render json: @combination_package_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combination_package_ingredients/1
  # PATCH/PUT /combination_package_ingredients/1.json
  def update
    respond_to do |format|
      if @combination_package_ingredient.update(combination_package_ingredient_params)
        format.html { redirect_to @combination_package_ingredient, notice: 'Combination package ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @combination_package_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @combination_package_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combination_package_ingredients/1
  # DELETE /combination_package_ingredients/1.json
  def destroy
    @combination_package_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to combination_package_ingredients_url, notice: 'Combination package ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combination_package_ingredient
      @combination_package_ingredient = CombinationPackageIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def combination_package_ingredient_params
      params.require(:combination_package_ingredient).permit(:combination_package_id, :ingredient_id,:ingredient_qty, :doseunit_id,:data_source_id)

    end
end
