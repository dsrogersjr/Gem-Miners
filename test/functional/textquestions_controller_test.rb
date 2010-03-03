require 'test_helper'

class TextquestionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:textquestions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create textquestion" do
    assert_difference('Textquestion.count') do
      post :create, :textquestion => { }
    end

    assert_redirected_to textquestion_path(assigns(:textquestion))
  end

  test "should show textquestion" do
    get :show, :id => textquestions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => textquestions(:one).to_param
    assert_response :success
  end

  test "should update textquestion" do
    put :update, :id => textquestions(:one).to_param, :textquestion => { }
    assert_redirected_to textquestion_path(assigns(:textquestion))
  end

  test "should destroy textquestion" do
    assert_difference('Textquestion.count', -1) do
      delete :destroy, :id => textquestions(:one).to_param
    end

    assert_redirected_to textquestions_path
  end
end
