require 'test_helper'

class DrugInteractionsControllerTest < ActionController::TestCase
  setup do
    @drug_interaction = drug_interactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drug_interactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drug_interaction" do
    assert_difference('DrugInteraction.count') do
      post :create, drug_interaction: { created_at: @drug_interaction.created_at, data_source_data_source_id: @drug_interaction.data_source_data_source_id, drug_interaction_id: @drug_interaction.drug_interaction_id, drug_interaction_text: @drug_interaction.drug_interaction_text, generic_id: @drug_interaction.generic_id, generics_generic_id: @drug_interaction.generics_generic_id, status: @drug_interaction.status, updated_at: @drug_interaction.updated_at }
    end

    assert_redirected_to drug_interaction_path(assigns(:drug_interaction))
  end

  test "should show drug_interaction" do
    get :show, id: @drug_interaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drug_interaction
    assert_response :success
  end

  test "should update drug_interaction" do
    patch :update, id: @drug_interaction, drug_interaction: { created_at: @drug_interaction.created_at, data_source_data_source_id: @drug_interaction.data_source_data_source_id, drug_interaction_id: @drug_interaction.drug_interaction_id, drug_interaction_text: @drug_interaction.drug_interaction_text, generic_id: @drug_interaction.generic_id, generics_generic_id: @drug_interaction.generics_generic_id, status: @drug_interaction.status, updated_at: @drug_interaction.updated_at }
    assert_redirected_to drug_interaction_path(assigns(:drug_interaction))
  end

  test "should destroy drug_interaction" do
    assert_difference('DrugInteraction.count', -1) do
      delete :destroy, id: @drug_interaction
    end

    assert_redirected_to drug_interactions_path
  end
end
