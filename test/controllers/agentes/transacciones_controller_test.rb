require 'test_helper'

class Agentes::TransaccionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agentes_transacciones_index_url
    assert_response :success
  end

  test "should get new" do
    get agentes_transacciones_new_url
    assert_response :success
  end

  test "should get show" do
    get agentes_transacciones_show_url
    assert_response :success
  end

  test "should get edit" do
    get agentes_transacciones_edit_url
    assert_response :success
  end

end
