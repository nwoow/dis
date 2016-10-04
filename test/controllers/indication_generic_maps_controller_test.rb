require 'test_helper'

class IndicationGenericMapsControllerTest < ActionController::TestCase
  setup do
    @indication_generic_map = indication_generic_maps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indication_generic_maps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indication_generic_map" do
    assert_difference('IndicationGenericMap.count') do
      post :create, indication_generic_map: { data_source_id: @indication_generic_map.data_source_id, generic_id: @indication_generic_map.generic_id, indication_generic_map_id: @indication_generic_map.indication_generic_map_id, indication_id: @indication_generic_map.indication_id, status: @indication_generic_map.status }
    end

    assert_redirected_to indication_generic_map_path(assigns(:indication_generic_map))
  end

  test "should show indication_generic_map" do
    get :show, id: @indication_generic_map
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indication_generic_map
    assert_response :success
  end

  test "should update indication_generic_map" do
    patch :update, id: @indication_generic_map, indication_generic_map: { data_source_id: @indication_generic_map.data_source_id, generic_id: @indication_generic_map.generic_id, indication_generic_map_id: @indication_generic_map.indication_generic_map_id, indication_id: @indication_generic_map.indication_id, status: @indication_generic_map.status }
    assert_redirected_to indication_generic_map_path(assigns(:indication_generic_map))
  end

  test "should destroy indication_generic_map" do
    assert_difference('IndicationGenericMap.count', -1) do
      delete :destroy, id: @indication_generic_map
    end

    assert_redirected_to indication_generic_maps_path
  end
end
