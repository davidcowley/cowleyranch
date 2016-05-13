require 'test_helper'

class HayTypesControllerTest < ActionController::TestCase
  setup do
    @hay_type = hay_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hay_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hay_type" do
    assert_difference('HayType.count') do
      post :create, hay_type: { abbreviation: @hay_type.abbreviation, description: @hay_type.description, status: @hay_type.status }
    end

    assert_redirected_to hay_type_path(assigns(:hay_type))
  end

  test "should show hay_type" do
    get :show, id: @hay_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hay_type
    assert_response :success
  end

  test "should update hay_type" do
    patch :update, id: @hay_type, hay_type: { abbreviation: @hay_type.abbreviation, description: @hay_type.description, status: @hay_type.status }
    assert_redirected_to hay_type_path(assigns(:hay_type))
  end

  test "should destroy hay_type" do
    assert_difference('HayType.count', -1) do
      delete :destroy, id: @hay_type
    end

    assert_redirected_to hay_types_path
  end
end
