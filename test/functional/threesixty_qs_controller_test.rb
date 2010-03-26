require 'test_helper'

class ThreesixtyQsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:threesixty_qs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create threesixty_q" do
    assert_difference('ThreesixtyQ.count') do
      post :create, :threesixty_q => { }
    end

    assert_redirected_to threesixty_q_path(assigns(:threesixty_q))
  end

  test "should show threesixty_q" do
    get :show, :id => threesixty_qs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => threesixty_qs(:one).to_param
    assert_response :success
  end

  test "should update threesixty_q" do
    put :update, :id => threesixty_qs(:one).to_param, :threesixty_q => { }
    assert_redirected_to threesixty_q_path(assigns(:threesixty_q))
  end

  test "should destroy threesixty_q" do
    assert_difference('ThreesixtyQ.count', -1) do
      delete :destroy, :id => threesixty_qs(:one).to_param
    end

    assert_redirected_to threesixty_qs_path
  end
end
