require 'test_helper'

class Call3sControllerTest < ActionController::TestCase
  setup do
    @call3 = call3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:call3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create call3" do
    assert_difference('Call3.count') do
      post :create, call3: @call3.attributes
    end

    assert_redirected_to call3_path(assigns(:call3))
  end

  test "should show call3" do
    get :show, id: @call3.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @call3.to_param
    assert_response :success
  end

  test "should update call3" do
    put :update, id: @call3.to_param, call3: @call3.attributes
    assert_redirected_to call3_path(assigns(:call3))
  end

  test "should destroy call3" do
    assert_difference('Call3.count', -1) do
      delete :destroy, id: @call3.to_param
    end

    assert_redirected_to call3s_path
  end
end
