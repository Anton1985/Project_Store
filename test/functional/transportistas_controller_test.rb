require 'test_helper'

class TransportistasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transportistas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transportista" do
    assert_difference('Transportista.count') do
      post :create, :transportista => { }
    end

    assert_redirected_to transportista_path(assigns(:transportista))
  end

  test "should show transportista" do
    get :show, :id => transportistas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => transportistas(:one).to_param
    assert_response :success
  end

  test "should update transportista" do
    put :update, :id => transportistas(:one).to_param, :transportista => { }
    assert_redirected_to transportista_path(assigns(:transportista))
  end

  test "should destroy transportista" do
    assert_difference('Transportista.count', -1) do
      delete :destroy, :id => transportistas(:one).to_param
    end

    assert_redirected_to transportistas_path
  end
end
