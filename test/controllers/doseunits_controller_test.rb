require 'test_helper'

class DoseunitsControllerTest < ActionController::TestCase
  setup do
    @doseunit = doseunits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doseunits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doseunit" do
    assert_difference('Doseunit.count') do
      post :create, doseunit: { data_source_data_source_id: @doseunit.data_source_data_source_id, doseunit_abbr: @doseunit.doseunit_abbr, doseunit_id: @doseunit.doseunit_id, doseunit_name: @doseunit.doseunit_name, status: @doseunit.status }
    end

    assert_redirected_to doseunit_path(assigns(:doseunit))
  end

  test "should show doseunit" do
    get :show, id: @doseunit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doseunit
    assert_response :success
  end

  test "should update doseunit" do
    patch :update, id: @doseunit, doseunit: { data_source_data_source_id: @doseunit.data_source_data_source_id, doseunit_abbr: @doseunit.doseunit_abbr, doseunit_id: @doseunit.doseunit_id, doseunit_name: @doseunit.doseunit_name, status: @doseunit.status }
    assert_redirected_to doseunit_path(assigns(:doseunit))
  end

  test "should destroy doseunit" do
    assert_difference('Doseunit.count', -1) do
      delete :destroy, id: @doseunit
    end

    assert_redirected_to doseunits_path
  end
end
