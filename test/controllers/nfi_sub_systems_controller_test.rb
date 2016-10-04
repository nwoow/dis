require 'test_helper'

class NfiSubSystemsControllerTest < ActionController::TestCase
  setup do
    @nfi_sub_system = nfi_sub_systems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nfi_sub_systems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nfi_sub_system" do
    assert_difference('NfiSubSystem.count') do
      post :create, nfi_sub_system: { data_source_data_source_id: @nfi_sub_system.data_source_data_source_id, status: @nfi_sub_system.status, sub_system_description: @nfi_sub_system.sub_system_description, sub_system_id: @nfi_sub_system.sub_system_id, system_id: @nfi_sub_system.system_id }
    end

    assert_redirected_to nfi_sub_system_path(assigns(:nfi_sub_system))
  end

  test "should show nfi_sub_system" do
    get :show, id: @nfi_sub_system
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nfi_sub_system
    assert_response :success
  end

  test "should update nfi_sub_system" do
    patch :update, id: @nfi_sub_system, nfi_sub_system: { data_source_data_source_id: @nfi_sub_system.data_source_data_source_id, status: @nfi_sub_system.status, sub_system_description: @nfi_sub_system.sub_system_description, sub_system_id: @nfi_sub_system.sub_system_id, system_id: @nfi_sub_system.system_id }
    assert_redirected_to nfi_sub_system_path(assigns(:nfi_sub_system))
  end

  test "should destroy nfi_sub_system" do
    assert_difference('NfiSubSystem.count', -1) do
      delete :destroy, id: @nfi_sub_system
    end

    assert_redirected_to nfi_sub_systems_path
  end
end
