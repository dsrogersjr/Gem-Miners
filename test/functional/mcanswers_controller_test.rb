require 'test_helper'

class McanswersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mcanswers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mcanswer" do
    assert_difference('Mcanswer.count') do
      post :create, :mcanswer => { }
    end

    assert_redirected_to mcanswer_path(assigns(:mcanswer))
  end

  test "should show mcanswer" do
    get :show, :id => mcanswers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mcanswers(:one).to_param
    assert_response :success
  end

  test "should update mcanswer" do
    put :update, :id => mcanswers(:one).to_param, :mcanswer => { }
    assert_redirected_to mcanswer_path(assigns(:mcanswer))
  end

  test "should destroy mcanswer" do
    assert_difference('Mcanswer.count', -1) do
      delete :destroy, :id => mcanswers(:one).to_param
    end

    assert_redirected_to mcanswers_path
  end
end
