require 'test_helper'

class McQuestionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mc_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mc_question" do
    assert_difference('McQuestion.count') do
      post :create, :mc_question => { }
    end

    assert_redirected_to mc_question_path(assigns(:mc_question))
  end

  test "should show mc_question" do
    get :show, :id => mc_questions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mc_questions(:one).to_param
    assert_response :success
  end

  test "should update mc_question" do
    put :update, :id => mc_questions(:one).to_param, :mc_question => { }
    assert_redirected_to mc_question_path(assigns(:mc_question))
  end

  test "should destroy mc_question" do
    assert_difference('McQuestion.count', -1) do
      delete :destroy, :id => mc_questions(:one).to_param
    end

    assert_redirected_to mc_questions_path
  end
end
