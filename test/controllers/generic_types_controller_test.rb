require 'test_helper'

class GenericTypesControllerTest < ActionController::TestCase
  setup do
    @generic_type = generic_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generic_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create generic_type" do
    assert_difference('GenericType.count') do
      post :create, generic_type: { data_source_data_source_id: @generic_type.data_source_data_source_id, generic_type_name: @generic_type.generic_type_name, status: @generic_type.status }
    end

    assert_redirected_to generic_type_path(assigns(:generic_type))
  end

  test "should show generic_type" do
    get :show, id: @generic_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @generic_type
    assert_response :success
  end

  test "should update generic_type" do
    patch :update, id: @generic_type, generic_type: { data_source_data_source_id: @generic_type.data_source_data_source_id, generic_type_name: @generic_type.generic_type_name, status: @generic_type.status }
    assert_redirected_to generic_type_path(assigns(:generic_type))
  end

  test "should destroy generic_type" do
    assert_difference('GenericType.count', -1) do
      delete :destroy, id: @generic_type
    end

    assert_redirected_to generic_types_path
  end
end
