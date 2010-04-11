require 'test_helper'

class TipoArticulosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_articulos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_articulo" do
    assert_difference('TipoArticulo.count') do
      post :create, :tipo_articulo => { }
    end

    assert_redirected_to tipo_articulo_path(assigns(:tipo_articulo))
  end

  test "should show tipo_articulo" do
    get :show, :id => tipo_articulos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tipo_articulos(:one).to_param
    assert_response :success
  end

  test "should update tipo_articulo" do
    put :update, :id => tipo_articulos(:one).to_param, :tipo_articulo => { }
    assert_redirected_to tipo_articulo_path(assigns(:tipo_articulo))
  end

  test "should destroy tipo_articulo" do
    assert_difference('TipoArticulo.count', -1) do
      delete :destroy, :id => tipo_articulos(:one).to_param
    end

    assert_redirected_to tipo_articulos_path
  end
end
