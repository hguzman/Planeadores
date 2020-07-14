require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usuarios_index_url
    assert_response :success
  end

  test "should get new" do
    get usuarios_new_url
    assert_response :success
  end

  test "should get show" do
    get usuarios_show_url
    assert_response :success
  end

  test "should get edit" do
    get usuarios_edit_url
    assert_response :success
  end

end
