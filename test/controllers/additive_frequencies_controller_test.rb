require 'test_helper'

class AdditiveFrequenciesControllerTest < ActionController::TestCase
  setup do
    @additive_frequency = additive_frequencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:additive_frequencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create additive_frequency" do
    assert_difference('AdditiveFrequency.count') do
      post :create, additive_frequency: {  }
    end

    assert_redirected_to additive_frequency_path(assigns(:additive_frequency))
  end

  test "should show additive_frequency" do
    get :show, id: @additive_frequency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @additive_frequency
    assert_response :success
  end

  test "should update additive_frequency" do
    patch :update, id: @additive_frequency, additive_frequency: {  }
    assert_redirected_to additive_frequency_path(assigns(:additive_frequency))
  end

  test "should destroy additive_frequency" do
    assert_difference('AdditiveFrequency.count', -1) do
      delete :destroy, id: @additive_frequency
    end

    assert_redirected_to additive_frequencies_path
  end
end
