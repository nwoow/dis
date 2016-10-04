require 'test_helper'

class CombinationPackageIngredientsControllerTest < ActionController::TestCase
  setup do
    @combination_package_ingredient = combination_package_ingredients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:combination_package_ingredients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create combination_package_ingredient" do
    assert_difference('CombinationPackageIngredient.count') do
      post :create, combination_package_ingredient: {  }
    end

    assert_redirected_to combination_package_ingredient_path(assigns(:combination_package_ingredient))
  end

  test "should show combination_package_ingredient" do
    get :show, id: @combination_package_ingredient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @combination_package_ingredient
    assert_response :success
  end

  test "should update combination_package_ingredient" do
    patch :update, id: @combination_package_ingredient, combination_package_ingredient: {  }
    assert_redirected_to combination_package_ingredient_path(assigns(:combination_package_ingredient))
  end

  test "should destroy combination_package_ingredient" do
    assert_difference('CombinationPackageIngredient.count', -1) do
      delete :destroy, id: @combination_package_ingredient
    end

    assert_redirected_to combination_package_ingredients_path
  end
end
