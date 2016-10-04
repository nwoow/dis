require 'test_helper'

class DosePeriodsControllerTest < ActionController::TestCase
  setup do
    @dose_period = dose_periods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dose_periods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dose_period" do
    assert_difference('DosePeriod.count') do
      post :create, dose_period: { data_source_data_source_id: @dose_period.data_source_data_source_id, dose_period_abbr: @dose_period.dose_period_abbr, dose_period_id: @dose_period.dose_period_id, dose_period_name: @dose_period.dose_period_name, status: @dose_period.status, sub_system_name: @dose_period.sub_system_name }
    end

    assert_redirected_to dose_period_path(assigns(:dose_period))
  end

  test "should show dose_period" do
    get :show, id: @dose_period
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dose_period
    assert_response :success
  end

  test "should update dose_period" do
    patch :update, id: @dose_period, dose_period: { data_source_data_source_id: @dose_period.data_source_data_source_id, dose_period_abbr: @dose_period.dose_period_abbr, dose_period_id: @dose_period.dose_period_id, dose_period_name: @dose_period.dose_period_name, status: @dose_period.status, sub_system_name: @dose_period.sub_system_name }
    assert_redirected_to dose_period_path(assigns(:dose_period))
  end

  test "should destroy dose_period" do
    assert_difference('DosePeriod.count', -1) do
      delete :destroy, id: @dose_period
    end

    assert_redirected_to dose_periods_path
  end
end
