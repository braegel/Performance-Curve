require 'test_helper'

class FatiguesControllerTest < ActionController::TestCase
  setup do
    @fatigue = fatigues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fatigues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fatigue" do
    assert_difference('Fatigue.count') do
      post :create, fatigue: @fatigue.attributes
    end

    assert_redirected_to fatigue_path(assigns(:fatigue))
  end

  test "should show fatigue" do
    get :show, id: @fatigue.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fatigue.to_param
    assert_response :success
  end

  test "should update fatigue" do
    put :update, id: @fatigue.to_param, fatigue: @fatigue.attributes
    assert_redirected_to fatigue_path(assigns(:fatigue))
  end

  test "should destroy fatigue" do
    assert_difference('Fatigue.count', -1) do
      delete :destroy, id: @fatigue.to_param
    end

    assert_redirected_to fatigues_path
  end
end
