require 'test_helper'

class GenericMonographsControllerTest < ActionController::TestCase
  setup do
    @generic_monograph = generic_monographs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generic_monographs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create generic_monograph" do
    assert_difference('GenericMonograph.count') do
      post :create, generic_monograph: { adverseeffect_monograph: @generic_monograph.adverseeffect_monograph, contraindication_monograph: @generic_monograph.contraindication_monograph, data_source_data_source_id: @generic_monograph.data_source_data_source_id, dose_monograph: @generic_monograph.dose_monograph, generic_monograph_id: @generic_monograph.generic_monograph_id, generics_generic_id: @generic_monograph.generics_generic_id, precaution_monograph: @generic_monograph.precaution_monograph, status: @generic_monograph.status, storage_monograph: @generic_monograph.storage_monograph }
    end

    assert_redirected_to generic_monograph_path(assigns(:generic_monograph))
  end

  test "should show generic_monograph" do
    get :show, id: @generic_monograph
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @generic_monograph
    assert_response :success
  end

  test "should update generic_monograph" do
    patch :update, id: @generic_monograph, generic_monograph: { adverseeffect_monograph: @generic_monograph.adverseeffect_monograph, contraindication_monograph: @generic_monograph.contraindication_monograph, data_source_data_source_id: @generic_monograph.data_source_data_source_id, dose_monograph: @generic_monograph.dose_monograph, generic_monograph_id: @generic_monograph.generic_monograph_id, generics_generic_id: @generic_monograph.generics_generic_id, precaution_monograph: @generic_monograph.precaution_monograph, status: @generic_monograph.status, storage_monograph: @generic_monograph.storage_monograph }
    assert_redirected_to generic_monograph_path(assigns(:generic_monograph))
  end

  test "should destroy generic_monograph" do
    assert_difference('GenericMonograph.count', -1) do
      delete :destroy, id: @generic_monograph
    end

    assert_redirected_to generic_monographs_path
  end
end
