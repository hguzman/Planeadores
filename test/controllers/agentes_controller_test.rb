require 'test_helper'

class AgentesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agentes_path
    assert_response :success
  end

  test "should get new" do
    get new_agente_path
    assert_response :success
  end

  test "should get show" do
    get agente_path(:one)
    assert_response :success
  end

  test "should get edit" do
    get edit_agente_path(:one)
    assert_response :success
  end

end
