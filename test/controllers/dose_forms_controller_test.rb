require 'test_helper'

class DoseFormsControllerTest < ActionController::TestCase
  setup do
    @dose_form = dose_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dose_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dose_form" do
    assert_difference('DoseForm.count') do
      post :create, dose_form: { data_source_id: @dose_form.data_source_id, doseform_abbr: @dose_form.doseform_abbr, doseform_name: @dose_form.doseform_name, status: @dose_form.status }
    end

    assert_redirected_to dose_form_path(assigns(:dose_form))
  end

  test "should show dose_form" do
    get :show, id: @dose_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dose_form
    assert_response :success
  end

  test "should update dose_form" do
    patch :update, id: @dose_form, dose_form: { data_source_id: @dose_form.data_source_id, doseform_abbr: @dose_form.doseform_abbr, doseform_name: @dose_form.doseform_name, status: @dose_form.status }
    assert_redirected_to dose_form_path(assigns(:dose_form))
  end

  test "should destroy dose_form" do
    assert_difference('DoseForm.count', -1) do
      delete :destroy, id: @dose_form
    end

    assert_redirected_to dose_forms_path
  end
end
