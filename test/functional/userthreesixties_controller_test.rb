require 'test_helper'

class UserthreesixtiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userthreesixties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userthreesixty" do
    assert_difference('Userthreesixty.count') do
      post :create, :userthreesixty => { }
    end

    assert_redirected_to userthreesixty_path(assigns(:userthreesixty))
  end

  test "should show userthreesixty" do
    get :show, :id => userthreesixties(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => userthreesixties(:one).to_param
    assert_response :success
  end

  test "should update userthreesixty" do
    put :update, :id => userthreesixties(:one).to_param, :userthreesixty => { }
    assert_redirected_to userthreesixty_path(assigns(:userthreesixty))
  end

  test "should destroy userthreesixty" do
    assert_difference('Userthreesixty.count', -1) do
      delete :destroy, :id => userthreesixties(:one).to_param
    end

    assert_redirected_to userthreesixties_path
  end
end
