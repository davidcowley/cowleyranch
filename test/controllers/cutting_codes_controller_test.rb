require 'test_helper'

class CuttingCodesControllerTest < ActionController::TestCase
  setup do
    @cutting_code = cutting_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cutting_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cutting_code" do
    assert_difference('CuttingCode.count') do
      post :create, cutting_code: { abbreviation: @cutting_code.abbreviation, description: @cutting_code.description, status: @cutting_code.status }
    end

    assert_redirected_to cutting_code_path(assigns(:cutting_code))
  end

  test "should show cutting_code" do
    get :show, id: @cutting_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cutting_code
    assert_response :success
  end

  test "should update cutting_code" do
    patch :update, id: @cutting_code, cutting_code: { abbreviation: @cutting_code.abbreviation, description: @cutting_code.description, status: @cutting_code.status }
    assert_redirected_to cutting_code_path(assigns(:cutting_code))
  end

  test "should destroy cutting_code" do
    assert_difference('CuttingCode.count', -1) do
      delete :destroy, id: @cutting_code
    end

    assert_redirected_to cutting_codes_path
  end
end
