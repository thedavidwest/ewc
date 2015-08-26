require 'test_helper'

class WearablesControllerTest < ActionController::TestCase
  setup do
    @wearable = wearables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wearables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wearable" do
    assert_difference('Wearable.count') do
      post :create, wearable: { description: @wearable.description }
    end

    assert_redirected_to wearable_path(assigns(:wearable))
  end

  test "should show wearable" do
    get :show, id: @wearable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wearable
    assert_response :success
  end

  test "should update wearable" do
    patch :update, id: @wearable, wearable: { description: @wearable.description }
    assert_redirected_to wearable_path(assigns(:wearable))
  end

  test "should destroy wearable" do
    assert_difference('Wearable.count', -1) do
      delete :destroy, id: @wearable
    end

    assert_redirected_to wearables_path
  end
end
