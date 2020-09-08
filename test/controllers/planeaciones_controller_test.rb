require 'test_helper'

class PlaneacionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get planeaciones_index_url
    assert_response :success
  end

  test "should get show" do
    get planeaciones_show_url
    assert_response :success
  end

end
