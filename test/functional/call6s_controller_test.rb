require 'test_helper'

class Call6sControllerTest < ActionController::TestCase
  setup do
    @call6 = call6s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:call6s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create call6" do
    assert_difference('Call6.count') do
      post :create, call6: @call6.attributes
    end

    assert_redirected_to call6_path(assigns(:call6))
  end

  test "should show call6" do
    get :show, id: @call6.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @call6.to_param
    assert_response :success
  end

  test "should update call6" do
    put :update, id: @call6.to_param, call6: @call6.attributes
    assert_redirected_to call6_path(assigns(:call6))
  end

  test "should destroy call6" do
    assert_difference('Call6.count', -1) do
      delete :destroy, id: @call6.to_param
    end

    assert_redirected_to call6s_path
  end
end
