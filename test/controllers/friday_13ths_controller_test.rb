require 'test_helper'

class Friday13thsControllerTest < ActionController::TestCase
  setup do
    @friday_13th = friday_13ths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:friday_13ths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create friday_13th" do
    assert_difference('Friday13th.count') do
      post :create, friday_13th: { name: @friday_13th.name, superstition: @friday_13th.superstition }
    end

    assert_redirected_to friday_13th_path(assigns(:friday_13th))
  end

  test "should show friday_13th" do
    get :show, id: @friday_13th
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @friday_13th
    assert_response :success
  end

  test "should update friday_13th" do
    patch :update, id: @friday_13th, friday_13th: { name: @friday_13th.name, superstition: @friday_13th.superstition }
    assert_redirected_to friday_13th_path(assigns(:friday_13th))
  end

  test "should destroy friday_13th" do
    assert_difference('Friday13th.count', -1) do
      delete :destroy, id: @friday_13th
    end

    assert_redirected_to friday_13ths_path
  end
end
