require 'test_helper'

class ThreesixtyqsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:threesixtyqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create threesixtyq" do
    assert_difference('Threesixtyq.count') do
      post :create, :threesixtyq => { }
    end

    assert_redirected_to threesixtyq_path(assigns(:threesixtyq))
  end

  test "should show threesixtyq" do
    get :show, :id => threesixtyqs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => threesixtyqs(:one).to_param
    assert_response :success
  end

  test "should update threesixtyq" do
    put :update, :id => threesixtyqs(:one).to_param, :threesixtyq => { }
    assert_redirected_to threesixtyq_path(assigns(:threesixtyq))
  end

  test "should destroy threesixtyq" do
    assert_difference('Threesixtyq.count', -1) do
      delete :destroy, :id => threesixtyqs(:one).to_param
    end

    assert_redirected_to threesixtyqs_path
  end
end
