require 'test_helper'

class FoodIntakesControllerTest < ActionController::TestCase
  setup do
    @food_intake = food_intakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_intakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_intake" do
    assert_difference('FoodIntake.count') do
      post :create, food_intake: { food_intake_id: @food_intake.food_intake_id, status: @food_intake.status }
    end

    assert_redirected_to food_intake_path(assigns(:food_intake))
  end

  test "should show food_intake" do
    get :show, id: @food_intake
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_intake
    assert_response :success
  end

  test "should update food_intake" do
    patch :update, id: @food_intake, food_intake: { food_intake_id: @food_intake.food_intake_id, status: @food_intake.status }
    assert_redirected_to food_intake_path(assigns(:food_intake))
  end

  test "should destroy food_intake" do
    assert_difference('FoodIntake.count', -1) do
      delete :destroy, id: @food_intake
    end

    assert_redirected_to food_intakes_path
  end
end
