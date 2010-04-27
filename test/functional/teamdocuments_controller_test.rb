require 'test_helper'

class TeamdocumentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teamdocuments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teamdocument" do
    assert_difference('Teamdocument.count') do
      post :create, :teamdocument => { }
    end

    assert_redirected_to teamdocument_path(assigns(:teamdocument))
  end

  test "should show teamdocument" do
    get :show, :id => teamdocuments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => teamdocuments(:one).to_param
    assert_response :success
  end

  test "should update teamdocument" do
    put :update, :id => teamdocuments(:one).to_param, :teamdocument => { }
    assert_redirected_to teamdocument_path(assigns(:teamdocument))
  end

  test "should destroy teamdocument" do
    assert_difference('Teamdocument.count', -1) do
      delete :destroy, :id => teamdocuments(:one).to_param
    end

    assert_redirected_to teamdocuments_path
  end
end
