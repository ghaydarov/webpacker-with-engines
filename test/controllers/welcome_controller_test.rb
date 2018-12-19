require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get welcome_main_url
    assert_response :success
  end

end
