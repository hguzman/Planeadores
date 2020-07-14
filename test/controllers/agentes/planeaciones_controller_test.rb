require 'test_helper'

class Agentes::PlaneacionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agentes_planeaciones_index_url
    assert_response :success
  end

  test "should get new" do
    get agentes_planeaciones_new_url
    assert_response :success
  end

  test "should get show" do
    get agentes_planeaciones_show_url
    assert_response :success
  end

  test "should get edit" do
    get agentes_planeaciones_edit_url
    assert_response :success
  end

end
