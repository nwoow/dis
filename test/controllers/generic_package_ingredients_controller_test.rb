require 'test_helper'

class GenericPackageIngredientsControllerTest < ActionController::TestCase
  setup do
    @generic_package_ingredient = generic_package_ingredients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generic_package_ingredients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create generic_package_ingredient" do
    assert_difference('GenericPackageIngredient.count') do
      post :create, generic_package_ingredient: { data_source_data_source_id: @generic_package_ingredient.data_source_data_source_id, doseunits_doseunit_id: @generic_package_ingredient.doseunits_doseunit_id, generic_package_id: @generic_package_ingredient.generic_package_id, generic_package_ingredient_id: @generic_package_ingredient.generic_package_ingredient_id, ingredient_id: @generic_package_ingredient.ingredient_id, ingredient_qty: @generic_package_ingredient.ingredient_qty, status: @generic_package_ingredient.status }
    end

    assert_redirected_to generic_package_ingredient_path(assigns(:generic_package_ingredient))
  end

  test "should show generic_package_ingredient" do
    get :show, id: @generic_package_ingredient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @generic_package_ingredient
    assert_response :success
  end

  test "should update generic_package_ingredient" do
    patch :update, id: @generic_package_ingredient, generic_package_ingredient: { data_source_data_source_id: @generic_package_ingredient.data_source_data_source_id, doseunits_doseunit_id: @generic_package_ingredient.doseunits_doseunit_id, generic_package_id: @generic_package_ingredient.generic_package_id, generic_package_ingredient_id: @generic_package_ingredient.generic_package_ingredient_id, ingredient_id: @generic_package_ingredient.ingredient_id, ingredient_qty: @generic_package_ingredient.ingredient_qty, status: @generic_package_ingredient.status }
    assert_redirected_to generic_package_ingredient_path(assigns(:generic_package_ingredient))
  end

  test "should destroy generic_package_ingredient" do
    assert_difference('GenericPackageIngredient.count', -1) do
      delete :destroy, id: @generic_package_ingredient
    end

    assert_redirected_to generic_package_ingredients_path
  end
end
