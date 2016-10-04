require 'test_helper'

class CombinationPackagesControllerTest < ActionController::TestCase
  setup do
    @combination_package = combination_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:combination_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create combination_package" do
    assert_difference('CombinationPackage.count') do
      post :create, combination_package: {  }
    end

    assert_redirected_to combination_package_path(assigns(:combination_package))
  end

  test "should show combination_package" do
    get :show, id: @combination_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @combination_package
    assert_response :success
  end

  test "should update combination_package" do
    patch :update, id: @combination_package, combination_package: {  }
    assert_redirected_to combination_package_path(assigns(:combination_package))
  end

  test "should destroy combination_package" do
    assert_difference('CombinationPackage.count', -1) do
      delete :destroy, id: @combination_package
    end

    assert_redirected_to combination_packages_path
  end
end
