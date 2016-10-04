require 'test_helper'

class NfiSchedulesControllerTest < ActionController::TestCase
  setup do
    @nfi_schedule = nfi_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nfi_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nfi_schedule" do
    assert_difference('NfiSchedule.count') do
      post :create, nfi_schedule: { data_source_data_source_id: @nfi_schedule.data_source_data_source_id, description: @nfi_schedule.description, schedule_id: @nfi_schedule.schedule_id, schedule_name: @nfi_schedule.schedule_name, status: @nfi_schedule.status }
    end

    assert_redirected_to nfi_schedule_path(assigns(:nfi_schedule))
  end

  test "should show nfi_schedule" do
    get :show, id: @nfi_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nfi_schedule
    assert_response :success
  end

  test "should update nfi_schedule" do
    patch :update, id: @nfi_schedule, nfi_schedule: { data_source_data_source_id: @nfi_schedule.data_source_data_source_id, description: @nfi_schedule.description, schedule_id: @nfi_schedule.schedule_id, schedule_name: @nfi_schedule.schedule_name, status: @nfi_schedule.status }
    assert_redirected_to nfi_schedule_path(assigns(:nfi_schedule))
  end

  test "should destroy nfi_schedule" do
    assert_difference('NfiSchedule.count', -1) do
      delete :destroy, id: @nfi_schedule
    end

    assert_redirected_to nfi_schedules_path
  end
end
