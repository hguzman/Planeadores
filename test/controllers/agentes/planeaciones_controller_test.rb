require 'test_helper'

class Agentes::PlaneacionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agente_planeaciones_path(agentes(:one))
    assert_response :success
  end

  test "should get new" do
    get new_agente_planeacion_path(:one)
    assert_response :success
  end

  test "should get show" do
    get agente_planeacion_path(:one, :one)
    assert_response :success
  end

  test "should get edit" do
    get edit_agente_planeacion_path(:one, :one)
    assert_response :success
  end

end
