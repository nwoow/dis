require 'test_helper'

class ContraceptiveInteractionsControllerTest < ActionController::TestCase
  setup do
    @contraceptive_interaction = contraceptive_interactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contraceptive_interactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contraceptive_interaction" do
    assert_difference('ContraceptiveInteraction.count') do
      post :create, contraceptive_interaction: { contraceptive_interaction_id: @contraceptive_interaction.contraceptive_interaction_id, contraceptive_interaction_text: @contraceptive_interaction.contraceptive_interaction_text, data_source_data_source_id: @contraceptive_interaction.data_source_data_source_id, generic_id: @contraceptive_interaction.generic_id, status: @contraceptive_interaction.status }
    end

    assert_redirected_to contraceptive_interaction_path(assigns(:contraceptive_interaction))
  end

  test "should show contraceptive_interaction" do
    get :show, id: @contraceptive_interaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contraceptive_interaction
    assert_response :success
  end

  test "should update contraceptive_interaction" do
    patch :update, id: @contraceptive_interaction, contraceptive_interaction: { contraceptive_interaction_id: @contraceptive_interaction.contraceptive_interaction_id, contraceptive_interaction_text: @contraceptive_interaction.contraceptive_interaction_text, data_source_data_source_id: @contraceptive_interaction.data_source_data_source_id, generic_id: @contraceptive_interaction.generic_id, status: @contraceptive_interaction.status }
    assert_redirected_to contraceptive_interaction_path(assigns(:contraceptive_interaction))
  end

  test "should destroy contraceptive_interaction" do
    assert_difference('ContraceptiveInteraction.count', -1) do
      delete :destroy, id: @contraceptive_interaction
    end

    assert_redirected_to contraceptive_interactions_path
  end
end
