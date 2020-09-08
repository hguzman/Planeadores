require 'test_helper'

class TransaccionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transacciones_index_url
    assert_response :success
  end

  test "should get show" do
    get transacciones_show_url
    assert_response :success
  end

end
