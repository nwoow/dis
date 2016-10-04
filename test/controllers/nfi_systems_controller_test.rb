require 'test_helper'

class NfiSystemsControllerTest < ActionController::TestCase
  setup do
    @nfi_system = nfi_systems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nfi_systems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nfi_system" do
    assert_difference('NfiSystem.count') do
      post :create, nfi_system: { data_source_data_source_id: @nfi_system.data_source_data_source_id, status: @nfi_system.status, sub_system_exist: @nfi_system.sub_system_exist, sysem_description: @nfi_system.sysem_description, system_name: @nfi_system.system_name }
    end

    assert_redirected_to nfi_system_path(assigns(:nfi_system))
  end

  test "should show nfi_system" do
    get :show, id: @nfi_system
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nfi_system
    assert_response :success
  end

  test "should update nfi_system" do
    patch :update, id: @nfi_system, nfi_system: { data_source_data_source_id: @nfi_system.data_source_data_source_id, status: @nfi_system.status, sub_system_exist: @nfi_system.sub_system_exist, sysem_description: @nfi_system.sysem_description, system_name: @nfi_system.system_name }
    assert_redirected_to nfi_system_path(assigns(:nfi_system))
  end

  test "should destroy nfi_system" do
    assert_difference('NfiSystem.count', -1) do
      delete :destroy, id: @nfi_system
    end

    assert_redirected_to nfi_systems_path
  end
end
