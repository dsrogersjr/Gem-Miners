require 'test_helper'

class Question360sControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question360s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question360" do
    assert_difference('Question360.count') do
      post :create, :question360 => { }
    end

    assert_redirected_to question360_path(assigns(:question360))
  end

  test "should show question360" do
    get :show, :id => question360s(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => question360s(:one).to_param
    assert_response :success
  end

  test "should update question360" do
    put :update, :id => question360s(:one).to_param, :question360 => { }
    assert_redirected_to question360_path(assigns(:question360))
  end

  test "should destroy question360" do
    assert_difference('Question360.count', -1) do
      delete :destroy, :id => question360s(:one).to_param
    end

    assert_redirected_to question360s_path
  end
end
