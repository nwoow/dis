require 'test_helper'

class AlcoholInteractionTypesControllerTest < ActionController::TestCase
  setup do
    @alcohol_interaction_type = alcohol_interaction_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alcohol_interaction_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alcohol_interaction_type" do
    assert_difference('AlcoholInteractionType.count') do
      post :create, alcohol_interaction_type: {  }
    end

    assert_redirected_to alcohol_interaction_type_path(assigns(:alcohol_interaction_type))
  end

  test "should show alcohol_interaction_type" do
    get :show, id: @alcohol_interaction_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alcohol_interaction_type
    assert_response :success
  end

  test "should update alcohol_interaction_type" do
    patch :update, id: @alcohol_interaction_type, alcohol_interaction_type: {  }
    assert_redirected_to alcohol_interaction_type_path(assigns(:alcohol_interaction_type))
  end

  test "should destroy alcohol_interaction_type" do
    assert_difference('AlcoholInteractionType.count', -1) do
      delete :destroy, id: @alcohol_interaction_type
    end

    assert_redirected_to alcohol_interaction_types_path
  end
end
