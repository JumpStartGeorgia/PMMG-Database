require 'test_helper'

class Call2sControllerTest < ActionController::TestCase
  setup do
    @call2 = call2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:call2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create call2" do
    assert_difference('Call2.count') do
      post :create, call2: @call2.attributes
    end

    assert_redirected_to call2_path(assigns(:call2))
  end

  test "should show call2" do
    get :show, id: @call2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @call2.to_param
    assert_response :success
  end

  test "should update call2" do
    put :update, id: @call2.to_param, call2: @call2.attributes
    assert_redirected_to call2_path(assigns(:call2))
  end

  test "should destroy call2" do
    assert_difference('Call2.count', -1) do
      delete :destroy, id: @call2.to_param
    end

    assert_redirected_to call2s_path
  end
end
