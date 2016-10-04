require 'test_helper'

class DispensibleCombinationsControllerTest < ActionController::TestCase
  setup do
    @dispensible_combination = dispensible_combinations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dispensible_combinations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dispensible_combination" do
    assert_difference('DispensibleCombination.count') do
      post :create, dispensible_combination: { combination_text: @dispensible_combination.combination_text, data_source_data_source_id: @dispensible_combination.data_source_data_source_id, dispensible_combination_id: @dispensible_combination.dispensible_combination_id, dispensible_combination_text: @dispensible_combination.dispensible_combination_text, doseform_id: @dispensible_combination.doseform_id, generic_id: @dispensible_combination.generic_id, route_id: @dispensible_combination.route_id, status: @dispensible_combination.status }
    end

    assert_redirected_to dispensible_combination_path(assigns(:dispensible_combination))
  end

  test "should show dispensible_combination" do
    get :show, id: @dispensible_combination
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dispensible_combination
    assert_response :success
  end

  test "should update dispensible_combination" do
    patch :update, id: @dispensible_combination, dispensible_combination: { combination_text: @dispensible_combination.combination_text, data_source_data_source_id: @dispensible_combination.data_source_data_source_id, dispensible_combination_id: @dispensible_combination.dispensible_combination_id, dispensible_combination_text: @dispensible_combination.dispensible_combination_text, doseform_id: @dispensible_combination.doseform_id, generic_id: @dispensible_combination.generic_id, route_id: @dispensible_combination.route_id, status: @dispensible_combination.status }
    assert_redirected_to dispensible_combination_path(assigns(:dispensible_combination))
  end

  test "should destroy dispensible_combination" do
    assert_difference('DispensibleCombination.count', -1) do
      delete :destroy, id: @dispensible_combination
    end

    assert_redirected_to dispensible_combinations_path
  end
end
