require 'test_helper'

class GenericsControllerTest < ActionController::TestCase
  setup do
    @generic = generics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create generic" do
    assert_difference('Generic.count') do
      post :create, generic: { data_source_data_source_id: @generic.data_source_data_source_id, food_intake_id: @generic.food_intake_id, generic_name: @generic.generic_name, generic_type_generic_type_id: @generic.generic_type_generic_type_id, is_essential: @generic.is_essential, preg_category_id: @generic.preg_category_id, rxcui: @generic.rxcui, schedule_id: @generic.schedule_id, status: @generic.status }
    end

    assert_redirected_to generic_path(assigns(:generic))
  end

  test "should show generic" do
    get :show, id: @generic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @generic
    assert_response :success
  end

  test "should update generic" do
    patch :update, id: @generic, generic: { data_source_data_source_id: @generic.data_source_data_source_id, food_intake_id: @generic.food_intake_id, generic_name: @generic.generic_name, generic_type_generic_type_id: @generic.generic_type_generic_type_id, is_essential: @generic.is_essential, preg_category_id: @generic.preg_category_id, rxcui: @generic.rxcui, schedule_id: @generic.schedule_id, status: @generic.status }
    assert_redirected_to generic_path(assigns(:generic))
  end

  test "should destroy generic" do
    assert_difference('Generic.count', -1) do
      delete :destroy, id: @generic
    end

    assert_redirected_to generics_path
  end
end
