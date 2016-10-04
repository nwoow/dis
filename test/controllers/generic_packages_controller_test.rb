require 'test_helper'

class GenericPackagesControllerTest < ActionController::TestCase
  setup do
    @generic_package = generic_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generic_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create generic_package" do
    assert_difference('GenericPackage.count') do
      post :create, generic_package: { brand_name_id: @generic_package.brand_name_id, data_source_data_source_id: @generic_package.data_source_data_source_id, dispensible_generic_id: @generic_package.dispensible_generic_id, generic_package_id: @generic_package.generic_package_id, generic_package_text: @generic_package.generic_package_text, manufacturer_manufacturer_id: @generic_package.manufacturer_manufacturer_id, package_qty: @generic_package.package_qty, package_type_id: @generic_package.package_type_id, price: @generic_package.price, status: @generic_package.status }
    end

    assert_redirected_to generic_package_path(assigns(:generic_package))
  end

  test "should show generic_package" do
    get :show, id: @generic_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @generic_package
    assert_response :success
  end

  test "should update generic_package" do
    patch :update, id: @generic_package, generic_package: { brand_name_id: @generic_package.brand_name_id, data_source_data_source_id: @generic_package.data_source_data_source_id, dispensible_generic_id: @generic_package.dispensible_generic_id, generic_package_id: @generic_package.generic_package_id, generic_package_text: @generic_package.generic_package_text, manufacturer_manufacturer_id: @generic_package.manufacturer_manufacturer_id, package_qty: @generic_package.package_qty, package_type_id: @generic_package.package_type_id, price: @generic_package.price, status: @generic_package.status }
    assert_redirected_to generic_package_path(assigns(:generic_package))
  end

  test "should destroy generic_package" do
    assert_difference('GenericPackage.count', -1) do
      delete :destroy, id: @generic_package
    end

    assert_redirected_to generic_packages_path
  end
end
