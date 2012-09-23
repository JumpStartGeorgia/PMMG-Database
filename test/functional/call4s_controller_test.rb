require 'test_helper'

class Call4sControllerTest < ActionController::TestCase
  setup do
    @call4 = call4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:call4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create call4" do
    assert_difference('Call4.count') do
      post :create, call4: @call4.attributes
    end

    assert_redirected_to call4_path(assigns(:call4))
  end

  test "should show call4" do
    get :show, id: @call4.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @call4.to_param
    assert_response :success
  end

  test "should update call4" do
    put :update, id: @call4.to_param, call4: @call4.attributes
    assert_redirected_to call4_path(assigns(:call4))
  end

  test "should destroy call4" do
    assert_difference('Call4.count', -1) do
      delete :destroy, id: @call4.to_param
    end

    assert_redirected_to call4s_path
  end
end
