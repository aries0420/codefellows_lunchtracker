require 'test_helper'

class DailylunchesControllerTest < ActionController::TestCase
  setup do
    @dailylunch = dailylunches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dailylunches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dailylunch" do
    assert_difference('Dailylunch.count') do
      post :create, dailylunch: { date: @dailylunch.date, description: @dailylunch.description, lunch: @dailylunch.lunch, lunch_time: @dailylunch.lunch_time }
    end

    assert_redirected_to dailylunch_path(assigns(:dailylunch))
  end

  test "should show dailylunch" do
    get :show, id: @dailylunch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dailylunch
    assert_response :success
  end

  test "should update dailylunch" do
    put :update, id: @dailylunch, dailylunch: { date: @dailylunch.date, description: @dailylunch.description, lunch: @dailylunch.lunch, lunch_time: @dailylunch.lunch_time }
    assert_redirected_to dailylunch_path(assigns(:dailylunch))
  end

  test "should destroy dailylunch" do
    assert_difference('Dailylunch.count', -1) do
      delete :destroy, id: @dailylunch
    end

    assert_redirected_to dailylunches_path
  end
end
