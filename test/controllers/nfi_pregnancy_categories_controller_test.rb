require 'test_helper'

class NfiPregnancyCategoriesControllerTest < ActionController::TestCase
  setup do
    @nfi_pregnancy_category = nfi_pregnancy_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nfi_pregnancy_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nfi_pregnancy_category" do
    assert_difference('NfiPregnancyCategory.count') do
      post :create, nfi_pregnancy_category: { data_source_data_source_id: @nfi_pregnancy_category.data_source_data_source_id, preg_category_description: @nfi_pregnancy_category.preg_category_description, preg_category_id: @nfi_pregnancy_category.preg_category_id, preg_category_name: @nfi_pregnancy_category.preg_category_name, status: @nfi_pregnancy_category.status }
    end

    assert_redirected_to nfi_pregnancy_category_path(assigns(:nfi_pregnancy_category))
  end

  test "should show nfi_pregnancy_category" do
    get :show, id: @nfi_pregnancy_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nfi_pregnancy_category
    assert_response :success
  end

  test "should update nfi_pregnancy_category" do
    patch :update, id: @nfi_pregnancy_category, nfi_pregnancy_category: { data_source_data_source_id: @nfi_pregnancy_category.data_source_data_source_id, preg_category_description: @nfi_pregnancy_category.preg_category_description, preg_category_id: @nfi_pregnancy_category.preg_category_id, preg_category_name: @nfi_pregnancy_category.preg_category_name, status: @nfi_pregnancy_category.status }
    assert_redirected_to nfi_pregnancy_category_path(assigns(:nfi_pregnancy_category))
  end

  test "should destroy nfi_pregnancy_category" do
    assert_difference('NfiPregnancyCategory.count', -1) do
      delete :destroy, id: @nfi_pregnancy_category
    end

    assert_redirected_to nfi_pregnancy_categories_path
  end
end
