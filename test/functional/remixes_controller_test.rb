require 'test_helper'

class RemixesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remixes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remix" do
    assert_difference('Remix.count') do
      post :create, :remix => { }
    end

    assert_redirected_to remix_path(assigns(:remix))
  end

  test "should show remix" do
    get :show, :id => remixes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => remixes(:one).to_param
    assert_response :success
  end

  test "should update remix" do
    put :update, :id => remixes(:one).to_param, :remix => { }
    assert_redirected_to remix_path(assigns(:remix))
  end

  test "should destroy remix" do
    assert_difference('Remix.count', -1) do
      delete :destroy, :id => remixes(:one).to_param
    end

    assert_redirected_to remixes_path
  end
end
