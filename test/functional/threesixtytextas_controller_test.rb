require 'test_helper'

class ThreesixtytextasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:threesixtytextas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create threesixtytexta" do
    assert_difference('Threesixtytexta.count') do
      post :create, :threesixtytexta => { }
    end

    assert_redirected_to threesixtytexta_path(assigns(:threesixtytexta))
  end

  test "should show threesixtytexta" do
    get :show, :id => threesixtytextas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => threesixtytextas(:one).to_param
    assert_response :success
  end

  test "should update threesixtytexta" do
    put :update, :id => threesixtytextas(:one).to_param, :threesixtytexta => { }
    assert_redirected_to threesixtytexta_path(assigns(:threesixtytexta))
  end

  test "should destroy threesixtytexta" do
    assert_difference('Threesixtytexta.count', -1) do
      delete :destroy, :id => threesixtytextas(:one).to_param
    end

    assert_redirected_to threesixtytextas_path
  end
end
