require 'test_helper'

class ThreesixtyTextqsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:threesixty_textqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create threesixty_textq" do
    assert_difference('ThreesixtyTextq.count') do
      post :create, :threesixty_textq => { }
    end

    assert_redirected_to threesixty_textq_path(assigns(:threesixty_textq))
  end

  test "should show threesixty_textq" do
    get :show, :id => threesixty_textqs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => threesixty_textqs(:one).to_param
    assert_response :success
  end

  test "should update threesixty_textq" do
    put :update, :id => threesixty_textqs(:one).to_param, :threesixty_textq => { }
    assert_redirected_to threesixty_textq_path(assigns(:threesixty_textq))
  end

  test "should destroy threesixty_textq" do
    assert_difference('ThreesixtyTextq.count', -1) do
      delete :destroy, :id => threesixty_textqs(:one).to_param
    end

    assert_redirected_to threesixty_textqs_path
  end
end
