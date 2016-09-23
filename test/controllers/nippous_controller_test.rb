require 'test_helper'

class NippousControllerTest < ActionController::TestCase
  setup do
    @nippou = nippous(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nippous)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nippou" do
    assert_difference('Nippou.count') do
      post :create, nippou: { content: @nippou.content, user_id: @nippou.user_id }
    end

    assert_redirected_to nippou_path(assigns(:nippou))
  end

  test "should show nippou" do
    get :show, id: @nippou
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nippou
    assert_response :success
  end

  test "should update nippou" do
    patch :update, id: @nippou, nippou: { content: @nippou.content, user_id: @nippou.user_id }
    assert_redirected_to nippou_path(assigns(:nippou))
  end

  test "should destroy nippou" do
    assert_difference('Nippou.count', -1) do
      delete :destroy, id: @nippou
    end

    assert_redirected_to nippous_path
  end
end
