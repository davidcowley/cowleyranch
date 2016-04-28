require 'test_helper'

class BailCodesControllerTest < ActionController::TestCase
  setup do
    @bail_code = bail_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bail_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bail_code" do
    assert_difference('BailCode.count') do
      post :create, bail_code: { abbreviation: @bail_code.abbreviation, description: @bail_code.description, status: @bail_code.status, weight: @bail_code.weight }
    end

    assert_redirected_to bail_code_path(assigns(:bail_code))
  end

  test "should show bail_code" do
    get :show, id: @bail_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bail_code
    assert_response :success
  end

  test "should update bail_code" do
    patch :update, id: @bail_code, bail_code: { abbreviation: @bail_code.abbreviation, description: @bail_code.description, status: @bail_code.status, weight: @bail_code.weight }
    assert_redirected_to bail_code_path(assigns(:bail_code))
  end

  test "should destroy bail_code" do
    assert_difference('BailCode.count', -1) do
      delete :destroy, id: @bail_code
    end

    assert_redirected_to bail_codes_path
  end
end
