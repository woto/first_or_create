require 'test_helper'

class CaseSensitivesControllerTest < ActionController::TestCase
  setup do
    @case_sensitive = case_sensitives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:case_sensitives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create case_sensitive" do
    assert_difference('CaseSensitive.count') do
      post :create, case_sensitive: { name: @case_sensitive.name }
    end

    assert_redirected_to case_sensitive_path(assigns(:case_sensitive))
  end

  test "should show case_sensitive" do
    get :show, id: @case_sensitive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @case_sensitive
    assert_response :success
  end

  test "should update case_sensitive" do
    patch :update, id: @case_sensitive, case_sensitive: { name: @case_sensitive.name }
    assert_redirected_to case_sensitive_path(assigns(:case_sensitive))
  end

  test "should destroy case_sensitive" do
    assert_difference('CaseSensitive.count', -1) do
      delete :destroy, id: @case_sensitive
    end

    assert_redirected_to case_sensitives_path
  end
end
