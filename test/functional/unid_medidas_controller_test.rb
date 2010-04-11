require 'test_helper'

class UnidMedidasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unid_medidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unid_medida" do
    assert_difference('UnidMedida.count') do
      post :create, :unid_medida => { }
    end

    assert_redirected_to unid_medida_path(assigns(:unid_medida))
  end

  test "should show unid_medida" do
    get :show, :id => unid_medidas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => unid_medidas(:one).to_param
    assert_response :success
  end

  test "should update unid_medida" do
    put :update, :id => unid_medidas(:one).to_param, :unid_medida => { }
    assert_redirected_to unid_medida_path(assigns(:unid_medida))
  end

  test "should destroy unid_medida" do
    assert_difference('UnidMedida.count', -1) do
      delete :destroy, :id => unid_medidas(:one).to_param
    end

    assert_redirected_to unid_medidas_path
  end
end
