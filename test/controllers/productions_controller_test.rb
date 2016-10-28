require 'test_helper'

class ProductionsControllerTest < ActionController::TestCase
  setup do
    @production = productions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create production" do
    assert_difference('Production.count') do
      post :create, production: { bail_code.description: @production.bail_code.description, cutting_code.description: @production.cutting_code.description, field.description: @production.field.description, hay_type.description: @production.hay_type.description, number_of_bales: @production.number_of_bales, prodution_at: @production.prodution_at }
    end

    assert_redirected_to production_path(assigns(:production))
  end

  test "should show production" do
    get :show, id: @production
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @production
    assert_response :success
  end

  test "should update production" do
    patch :update, id: @production, production: { bail_code.description: @production.bail_code.description, cutting_code.description: @production.cutting_code.description, field.description: @production.field.description, hay_type.description: @production.hay_type.description, number_of_bales: @production.number_of_bales, prodution_at: @production.prodution_at }
    assert_redirected_to production_path(assigns(:production))
  end

  test "should destroy production" do
    assert_difference('Production.count', -1) do
      delete :destroy, id: @production
    end

    assert_redirected_to productions_path
  end
end
