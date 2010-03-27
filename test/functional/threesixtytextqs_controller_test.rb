require 'test_helper'

class ThreesixtytextqsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:threesixtytextqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create threesixtytextq" do
    assert_difference('Threesixtytextq.count') do
      post :create, :threesixtytextq => { }
    end

    assert_redirected_to threesixtytextq_path(assigns(:threesixtytextq))
  end

  test "should show threesixtytextq" do
    get :show, :id => threesixtytextqs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => threesixtytextqs(:one).to_param
    assert_response :success
  end

  test "should update threesixtytextq" do
    put :update, :id => threesixtytextqs(:one).to_param, :threesixtytextq => { }
    assert_redirected_to threesixtytextq_path(assigns(:threesixtytextq))
  end

  test "should destroy threesixtytextq" do
    assert_difference('Threesixtytextq.count', -1) do
      delete :destroy, :id => threesixtytextqs(:one).to_param
    end

    assert_redirected_to threesixtytextqs_path
  end
end
