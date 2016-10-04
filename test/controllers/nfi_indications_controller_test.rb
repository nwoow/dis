require 'test_helper'

class NfiIndicationsControllerTest < ActionController::TestCase
  setup do
    @nfi_indication = nfi_indications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nfi_indications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nfi_indication" do
    assert_difference('NfiIndication.count') do
      post :create, nfi_indication: { data_source_data_source_id: @nfi_indication.data_source_data_source_id, indication_id: @nfi_indication.indication_id, indication_name: @nfi_indication.indication_name, status: @nfi_indication.status }
    end

    assert_redirected_to nfi_indication_path(assigns(:nfi_indication))
  end

  test "should show nfi_indication" do
    get :show, id: @nfi_indication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nfi_indication
    assert_response :success
  end

  test "should update nfi_indication" do
    patch :update, id: @nfi_indication, nfi_indication: { data_source_data_source_id: @nfi_indication.data_source_data_source_id, indication_id: @nfi_indication.indication_id, indication_name: @nfi_indication.indication_name, status: @nfi_indication.status }
    assert_redirected_to nfi_indication_path(assigns(:nfi_indication))
  end

  test "should destroy nfi_indication" do
    assert_difference('NfiIndication.count', -1) do
      delete :destroy, id: @nfi_indication
    end

    assert_redirected_to nfi_indications_path
  end
end
