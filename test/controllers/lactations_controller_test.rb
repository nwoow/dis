require 'test_helper'

class LactationsControllerTest < ActionController::TestCase
  setup do
    @lactation = lactations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lactations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lactation" do
    assert_difference('Lactation.count') do
      post :create, lactation: { data_source_data_source_id: @lactation.data_source_data_source_id, generics_generic_id: @lactation.generics_generic_id, lactation_id: @lactation.lactation_id, lactation_text: @lactation.lactation_text, status: @lactation.status }
    end

    assert_redirected_to lactation_path(assigns(:lactation))
  end

  test "should show lactation" do
    get :show, id: @lactation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lactation
    assert_response :success
  end

  test "should update lactation" do
    patch :update, id: @lactation, lactation: { data_source_data_source_id: @lactation.data_source_data_source_id, generics_generic_id: @lactation.generics_generic_id, lactation_id: @lactation.lactation_id, lactation_text: @lactation.lactation_text, status: @lactation.status }
    assert_redirected_to lactation_path(assigns(:lactation))
  end

  test "should destroy lactation" do
    assert_difference('Lactation.count', -1) do
      delete :destroy, id: @lactation
    end

    assert_redirected_to lactations_path
  end
end
