require 'test_helper'

class HemoLunarsControllerTest < ActionController::TestCase
  setup do
    @hemo_lunar = hemo_lunars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hemo_lunars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hemo_lunar" do
    assert_difference('HemoLunar.count') do
      post :create, hemo_lunar: @hemo_lunar.attributes
    end

    assert_redirected_to hemo_lunar_path(assigns(:hemo_lunar))
  end

  test "should show hemo_lunar" do
    get :show, id: @hemo_lunar.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hemo_lunar.to_param
    assert_response :success
  end

  test "should update hemo_lunar" do
    put :update, id: @hemo_lunar.to_param, hemo_lunar: @hemo_lunar.attributes
    assert_redirected_to hemo_lunar_path(assigns(:hemo_lunar))
  end

  test "should destroy hemo_lunar" do
    assert_difference('HemoLunar.count', -1) do
      delete :destroy, id: @hemo_lunar.to_param
    end

    assert_redirected_to hemo_lunars_path
  end
end
