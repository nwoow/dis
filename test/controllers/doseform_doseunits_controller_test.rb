require 'test_helper'

class DoseformDoseunitsControllerTest < ActionController::TestCase
  setup do
    @doseform_doseunit = doseform_doseunits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doseform_doseunits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doseform_doseunit" do
    assert_difference('DoseformDoseunit.count') do
      post :create, doseform_doseunit: { doseform_id: @doseform_doseunit.doseform_id, doseunit_id: @doseform_doseunit.doseunit_id, is_default: @doseform_doseunit.is_default }
    end

    assert_redirected_to doseform_doseunit_path(assigns(:doseform_doseunit))
  end

  test "should show doseform_doseunit" do
    get :show, id: @doseform_doseunit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doseform_doseunit
    assert_response :success
  end

  test "should update doseform_doseunit" do
    patch :update, id: @doseform_doseunit, doseform_doseunit: { doseform_id: @doseform_doseunit.doseform_id, doseunit_id: @doseform_doseunit.doseunit_id, is_default: @doseform_doseunit.is_default }
    assert_redirected_to doseform_doseunit_path(assigns(:doseform_doseunit))
  end

  test "should destroy doseform_doseunit" do
    assert_difference('DoseformDoseunit.count', -1) do
      delete :destroy, id: @doseform_doseunit
    end

    assert_redirected_to doseform_doseunits_path
  end
end
