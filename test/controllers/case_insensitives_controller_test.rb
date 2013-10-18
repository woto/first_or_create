require 'test_helper'

class CaseInsensitivesControllerTest < ActionController::TestCase
  setup do
    @case_insensitive = case_insensitives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:case_insensitives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create case_insensitive" do
    assert_difference('CaseInsensitive.count') do
      post :create, case_insensitive: { name: @case_insensitive.name }
    end

    assert_redirected_to case_insensitive_path(assigns(:case_insensitive))
  end

  test "should show case_insensitive" do
    get :show, id: @case_insensitive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @case_insensitive
    assert_response :success
  end

  test "should update case_insensitive" do
    patch :update, id: @case_insensitive, case_insensitive: { name: @case_insensitive.name }
    assert_redirected_to case_insensitive_path(assigns(:case_insensitive))
  end

  test "should destroy case_insensitive" do
    assert_difference('CaseInsensitive.count', -1) do
      delete :destroy, id: @case_insensitive
    end

    assert_redirected_to case_insensitives_path
  end
end
