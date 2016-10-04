require 'test_helper'

class ManufacturersControllerTest < ActionController::TestCase
  setup do
    @manufacturer = manufacturers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manufacturers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manufacturer" do
    assert_difference('Manufacturer.count') do
      post :create, manufacturer: { address1: @manufacturer.address1, address2: @manufacturer.address2, city: @manufacturer.city, data_source_id: @manufacturer.data_source_id, email: @manufacturer.email, fax: @manufacturer.fax, india_state_id: @manufacturer.india_state_id, lactation_id: @manufacturer.lactation_id, manufacturer_abbr: @manufacturer.manufacturer_abbr, manufacturer_id: @manufacturer.manufacturer_id, manufacturer_name: @manufacturer.manufacturer_name, mobilephone: @manufacturer.mobilephone, phone: @manufacturer.phone, pin: @manufacturer.pin, status: @manufacturer.status, website: @manufacturer.website }
    end

    assert_redirected_to manufacturer_path(assigns(:manufacturer))
  end

  test "should show manufacturer" do
    get :show, id: @manufacturer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manufacturer
    assert_response :success
  end

  test "should update manufacturer" do
    patch :update, id: @manufacturer, manufacturer: { address1: @manufacturer.address1, address2: @manufacturer.address2, city: @manufacturer.city, data_source_id: @manufacturer.data_source_id, email: @manufacturer.email, fax: @manufacturer.fax, india_state_id: @manufacturer.india_state_id, lactation_id: @manufacturer.lactation_id, manufacturer_abbr: @manufacturer.manufacturer_abbr, manufacturer_id: @manufacturer.manufacturer_id, manufacturer_name: @manufacturer.manufacturer_name, mobilephone: @manufacturer.mobilephone, phone: @manufacturer.phone, pin: @manufacturer.pin, status: @manufacturer.status, website: @manufacturer.website }
    assert_redirected_to manufacturer_path(assigns(:manufacturer))
  end

  test "should destroy manufacturer" do
    assert_difference('Manufacturer.count', -1) do
      delete :destroy, id: @manufacturer
    end

    assert_redirected_to manufacturers_path
  end
end
