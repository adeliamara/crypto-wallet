require 'test_helper'

class WelcolmeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcolme_index_url
    assert_response :success
  end

end
