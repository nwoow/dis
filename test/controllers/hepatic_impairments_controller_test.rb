require 'test_helper'

class HepaticImpairmentsControllerTest < ActionController::TestCase
  setup do
    @hepatic_impairment = hepatic_impairments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hepatic_impairments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hepatic_impairment" do
    assert_difference('HepaticImpairment.count') do
      post :create, hepatic_impairment: { data_source_data_source_id: @hepatic_impairment.data_source_data_source_id, generics_generic_id: @hepatic_impairment.generics_generic_id, hepatic_imp_id: @hepatic_impairment.hepatic_imp_id, hepatic_imp_instructions: @hepatic_impairment.hepatic_imp_instructions, hepatic_imp_text: @hepatic_impairment.hepatic_imp_text, status: @hepatic_impairment.status }
    end

    assert_redirected_to hepatic_impairment_path(assigns(:hepatic_impairment))
  end

  test "should show hepatic_impairment" do
    get :show, id: @hepatic_impairment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hepatic_impairment
    assert_response :success
  end

  test "should update hepatic_impairment" do
    patch :update, id: @hepatic_impairment, hepatic_impairment: { data_source_data_source_id: @hepatic_impairment.data_source_data_source_id, generics_generic_id: @hepatic_impairment.generics_generic_id, hepatic_imp_id: @hepatic_impairment.hepatic_imp_id, hepatic_imp_instructions: @hepatic_impairment.hepatic_imp_instructions, hepatic_imp_text: @hepatic_impairment.hepatic_imp_text, status: @hepatic_impairment.status }
    assert_redirected_to hepatic_impairment_path(assigns(:hepatic_impairment))
  end

  test "should destroy hepatic_impairment" do
    assert_difference('HepaticImpairment.count', -1) do
      delete :destroy, id: @hepatic_impairment
    end

    assert_redirected_to hepatic_impairments_path
  end
end
