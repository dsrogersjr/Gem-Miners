require 'test_helper'

class ThreesixtyanswersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:threesixtyanswers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create threesixtyanswer" do
    assert_difference('Threesixtyanswer.count') do
      post :create, :threesixtyanswer => { }
    end

    assert_redirected_to threesixtyanswer_path(assigns(:threesixtyanswer))
  end

  test "should show threesixtyanswer" do
    get :show, :id => threesixtyanswers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => threesixtyanswers(:one).to_param
    assert_response :success
  end

  test "should update threesixtyanswer" do
    put :update, :id => threesixtyanswers(:one).to_param, :threesixtyanswer => { }
    assert_redirected_to threesixtyanswer_path(assigns(:threesixtyanswer))
  end

  test "should destroy threesixtyanswer" do
    assert_difference('Threesixtyanswer.count', -1) do
      delete :destroy, :id => threesixtyanswers(:one).to_param
    end

    assert_redirected_to threesixtyanswers_path
  end
end
