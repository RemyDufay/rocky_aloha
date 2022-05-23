require "test_helper"

class RocksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rocks_index_url
    assert_response :success
  end

  test "should get create" do
    get rocks_create_url
    assert_response :success
  end

  test "should get new" do
    get rocks_new_url
    assert_response :success
  end
end
