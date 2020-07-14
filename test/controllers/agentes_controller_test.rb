require 'test_helper'

class AgentesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agentes_index_url
    assert_response :success
  end

  test "should get new" do
    get agentes_new_url
    assert_response :success
  end

  test "should get show" do
    get agentes_show_url
    assert_response :success
  end

  test "should get edit" do
    get agentes_edit_url
    assert_response :success
  end

end
