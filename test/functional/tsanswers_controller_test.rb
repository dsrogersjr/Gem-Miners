require 'test_helper'

class TsanswersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tsanswers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tsanswer" do
    assert_difference('Tsanswer.count') do
      post :create, :tsanswer => { }
    end

    assert_redirected_to tsanswer_path(assigns(:tsanswer))
  end

  test "should show tsanswer" do
    get :show, :id => tsanswers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tsanswers(:one).to_param
    assert_response :success
  end

  test "should update tsanswer" do
    put :update, :id => tsanswers(:one).to_param, :tsanswer => { }
    assert_redirected_to tsanswer_path(assigns(:tsanswer))
  end

  test "should destroy tsanswer" do
    assert_difference('Tsanswer.count', -1) do
      delete :destroy, :id => tsanswers(:one).to_param
    end

    assert_redirected_to tsanswers_path
  end
end
