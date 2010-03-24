require 'test_helper'

class McquestionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mcquestions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mcquestion" do
    assert_difference('Mcquestion.count') do
      post :create, :mcquestion => { }
    end

    assert_redirected_to mcquestion_path(assigns(:mcquestion))
  end

  test "should show mcquestion" do
    get :show, :id => mcquestions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mcquestions(:one).to_param
    assert_response :success
  end

  test "should update mcquestion" do
    put :update, :id => mcquestions(:one).to_param, :mcquestion => { }
    assert_redirected_to mcquestion_path(assigns(:mcquestion))
  end

  test "should destroy mcquestion" do
    assert_difference('Mcquestion.count', -1) do
      delete :destroy, :id => mcquestions(:one).to_param
    end

    assert_redirected_to mcquestions_path
  end
end
