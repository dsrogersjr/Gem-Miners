require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer" do
    assert_difference('Answer.count') do
      post :create, :answer => { }
    end

    assert_redirected_to answer_path(assigns(:answer))
  end

  test "should show answer" do
    get :show, :id => answers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => answers(:one).to_param
    assert_response :success
  end

  test "should update answer" do
    put :update, :id => answers(:one).to_param, :answer => { }
    assert_redirected_to answer_path(assigns(:answer))
  end

  test "should destroy answer" do
    assert_difference('Answer.count', -1) do
      delete :destroy, :id => answers(:one).to_param
    end

    assert_redirected_to answers_path
  end
end
