require 'test_helper'

class CombinationContentsControllerTest < ActionController::TestCase
  setup do
    @combination_content = combination_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:combination_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create combination_content" do
    assert_difference('CombinationContent.count') do
      post :create, combination_content: {  }
    end

    assert_redirected_to combination_content_path(assigns(:combination_content))
  end

  test "should show combination_content" do
    get :show, id: @combination_content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @combination_content
    assert_response :success
  end

  test "should update combination_content" do
    patch :update, id: @combination_content, combination_content: {  }
    assert_redirected_to combination_content_path(assigns(:combination_content))
  end

  test "should destroy combination_content" do
    assert_difference('CombinationContent.count', -1) do
      delete :destroy, id: @combination_content
    end

    assert_redirected_to combination_contents_path
  end
end
