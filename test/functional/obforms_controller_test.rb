require 'test_helper'

class ObformsControllerTest < ActionController::TestCase
  setup do
    @obform = obforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:obforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create obform" do
    assert_difference('Obform.count') do
      post :create, obform: @obform.attributes
    end

    assert_redirected_to obform_path(assigns(:obform))
  end

  test "should show obform" do
    get :show, id: @obform.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @obform.to_param
    assert_response :success
  end

  test "should update obform" do
    put :update, id: @obform.to_param, obform: @obform.attributes
    assert_redirected_to obform_path(assigns(:obform))
  end

  test "should destroy obform" do
    assert_difference('Obform.count', -1) do
      delete :destroy, id: @obform.to_param
    end

    assert_redirected_to obforms_path
  end
end
