require 'test_helper'

class TsquestionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tsquestions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tsquestion" do
    assert_difference('Tsquestion.count') do
      post :create, :tsquestion => { }
    end

    assert_redirected_to tsquestion_path(assigns(:tsquestion))
  end

  test "should show tsquestion" do
    get :show, :id => tsquestions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tsquestions(:one).to_param
    assert_response :success
  end

  test "should update tsquestion" do
    put :update, :id => tsquestions(:one).to_param, :tsquestion => { }
    assert_redirected_to tsquestion_path(assigns(:tsquestion))
  end

  test "should destroy tsquestion" do
    assert_difference('Tsquestion.count', -1) do
      delete :destroy, :id => tsquestions(:one).to_param
    end

    assert_redirected_to tsquestions_path
  end
end
