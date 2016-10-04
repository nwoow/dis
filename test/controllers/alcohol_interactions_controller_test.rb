require 'test_helper'

class AlcoholInteractionsControllerTest < ActionController::TestCase
  setup do
    @alcohol_interaction = alcohol_interactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alcohol_interactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alcohol_interaction" do
    assert_difference('AlcoholInteraction.count') do
      post :create, alcohol_interaction: {  }
    end

    assert_redirected_to alcohol_interaction_path(assigns(:alcohol_interaction))
  end

  test "should show alcohol_interaction" do
    get :show, id: @alcohol_interaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alcohol_interaction
    assert_response :success
  end

  test "should update alcohol_interaction" do
    patch :update, id: @alcohol_interaction, alcohol_interaction: {  }
    assert_redirected_to alcohol_interaction_path(assigns(:alcohol_interaction))
  end

  test "should destroy alcohol_interaction" do
    assert_difference('AlcoholInteraction.count', -1) do
      delete :destroy, id: @alcohol_interaction
    end

    assert_redirected_to alcohol_interactions_path
  end
end
