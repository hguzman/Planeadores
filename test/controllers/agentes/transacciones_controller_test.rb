require 'test_helper'

class Agentes::TransaccionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agente_transacciones_path(agentes(:one))
    assert_response :success
  end

  test "should get new" do
    get new_agente_path(:one)
    assert_response :success
  end

  test "should get show" do
    get agente_transaccion_path(:one, :one)
    assert_response :success
  end

  test "should get edit" do
    get edit_agente_transaccion_path(:one, :one)
    assert_response :success
  end

end
