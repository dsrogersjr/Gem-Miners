require 'test_helper'

class UsersurveysControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usersurveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usersurvey" do
    assert_difference('Usersurvey.count') do
      post :create, :usersurvey => { }
    end

    assert_redirected_to usersurvey_path(assigns(:usersurvey))
  end

  test "should show usersurvey" do
    get :show, :id => usersurveys(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => usersurveys(:one).to_param
    assert_response :success
  end

  test "should update usersurvey" do
    put :update, :id => usersurveys(:one).to_param, :usersurvey => { }
    assert_redirected_to usersurvey_path(assigns(:usersurvey))
  end

  test "should destroy usersurvey" do
    assert_difference('Usersurvey.count', -1) do
      delete :destroy, :id => usersurveys(:one).to_param
    end

    assert_redirected_to usersurveys_path
  end
end
