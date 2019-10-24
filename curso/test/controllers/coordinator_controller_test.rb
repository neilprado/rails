require 'test_helper'

class CoordinatorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coordinator_index_url
    assert_response :success
  end

end
