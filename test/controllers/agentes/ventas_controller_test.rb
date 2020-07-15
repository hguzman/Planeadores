require 'test_helper'

class Agentes::VentasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agentes_ventas_index_url
    assert_response :success
  end

  test "should get new" do
    get agentes_ventas_new_url
    assert_response :success
  end

  test "should get show" do
    get agentes_ventas_show_url
    assert_response :success
  end

  test "should get edit" do
    get agentes_ventas_edit_url
    assert_response :success
  end

end
