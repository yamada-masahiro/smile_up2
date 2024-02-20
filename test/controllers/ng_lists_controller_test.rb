require "test_helper"

class NgListsControllerTest < ActionDispatch::IntegrationTest
  test "should get normal" do
    get ng_lists_normal_url
    assert_response :success
  end
end
