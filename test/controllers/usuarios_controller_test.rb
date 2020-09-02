require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usuarios_path
    assert_response :success
  end

  test "should get new" do
    get new_usuario_path
    assert_response :success
  end

  test "should get show" do
    get usuario_path(:one)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_path(:one)
    assert_response :success
  end

end
