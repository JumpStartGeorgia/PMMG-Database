require 'test_helper'

class Call5sControllerTest < ActionController::TestCase
  setup do
    @call5 = call5s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:call5s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create call5" do
    assert_difference('Call5.count') do
      post :create, call5: @call5.attributes
    end

    assert_redirected_to call5_path(assigns(:call5))
  end

  test "should show call5" do
    get :show, id: @call5.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @call5.to_param
    assert_response :success
  end

  test "should update call5" do
    put :update, id: @call5.to_param, call5: @call5.attributes
    assert_redirected_to call5_path(assigns(:call5))
  end

  test "should destroy call5" do
    assert_difference('Call5.count', -1) do
      delete :destroy, id: @call5.to_param
    end

    assert_redirected_to call5s_path
  end
end
