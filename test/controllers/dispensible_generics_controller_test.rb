require 'test_helper'

class DispensibleGenericsControllerTest < ActionController::TestCase
  setup do
    @dispensible_generic = dispensible_generics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dispensible_generics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dispensible_generic" do
    assert_difference('DispensibleGeneric.count') do
      post :create, dispensible_generic: { data_source_data_source_id: @dispensible_generic.data_source_data_source_id, dispensible_generic_id: @dispensible_generic.dispensible_generic_id, dispensible_generic_text: @dispensible_generic.dispensible_generic_text, dispensible_qty: @dispensible_generic.dispensible_qty, doseform_doseform_id: @dispensible_generic.doseform_doseform_id, doseunit_id: @dispensible_generic.doseunit_id, doseunits_doseunit_id: @dispensible_generic.doseunits_doseunit_id, generic_strength: @dispensible_generic.generic_strength, routes_route_id: @dispensible_generic.routes_route_id, status: @dispensible_generic.status }
    end

    assert_redirected_to dispensible_generic_path(assigns(:dispensible_generic))
  end

  test "should show dispensible_generic" do
    get :show, id: @dispensible_generic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dispensible_generic
    assert_response :success
  end

  test "should update dispensible_generic" do
    patch :update, id: @dispensible_generic, dispensible_generic: { data_source_data_source_id: @dispensible_generic.data_source_data_source_id, dispensible_generic_id: @dispensible_generic.dispensible_generic_id, dispensible_generic_text: @dispensible_generic.dispensible_generic_text, dispensible_qty: @dispensible_generic.dispensible_qty, doseform_doseform_id: @dispensible_generic.doseform_doseform_id, doseunit_id: @dispensible_generic.doseunit_id, doseunits_doseunit_id: @dispensible_generic.doseunits_doseunit_id, generic_strength: @dispensible_generic.generic_strength, routes_route_id: @dispensible_generic.routes_route_id, status: @dispensible_generic.status }
    assert_redirected_to dispensible_generic_path(assigns(:dispensible_generic))
  end

  test "should destroy dispensible_generic" do
    assert_difference('DispensibleGeneric.count', -1) do
      delete :destroy, id: @dispensible_generic
    end

    assert_redirected_to dispensible_generics_path
  end
end
