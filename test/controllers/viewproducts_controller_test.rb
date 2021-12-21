require 'test_helper'

class ViewproductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get viewproducts_index_url
    assert_response :success
  end

  test "should get show" do
    get viewproducts_show_url
    assert_response :success
  end

end
