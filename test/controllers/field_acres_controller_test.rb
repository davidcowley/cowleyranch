require 'test_helper'

class FieldAcresControllerTest < ActionController::TestCase
  setup do
    @field_acre = field_acres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:field_acres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create field_acre" do
    assert_difference('FieldAcre.count') do
      post :create, field_acre: { abbreviation: @field_acre.abbreviation, description: @field_acre.description, field_type.description: @field_acre.field_type.description, number_of_acres: @field_acre.number_of_acres, status: @field_acre.status }
    end

    assert_redirected_to field_acre_path(assigns(:field_acre))
  end

  test "should show field_acre" do
    get :show, id: @field_acre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @field_acre
    assert_response :success
  end

  test "should update field_acre" do
    patch :update, id: @field_acre, field_acre: { abbreviation: @field_acre.abbreviation, description: @field_acre.description, field_type.description: @field_acre.field_type.description, number_of_acres: @field_acre.number_of_acres, status: @field_acre.status }
    assert_redirected_to field_acre_path(assigns(:field_acre))
  end

  test "should destroy field_acre" do
    assert_difference('FieldAcre.count', -1) do
      delete :destroy, id: @field_acre
    end

    assert_redirected_to field_acres_path
  end
end
