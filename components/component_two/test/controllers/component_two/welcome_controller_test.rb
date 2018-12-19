require 'test_helper'

module ComponentTwo
  class WelcomeControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get component" do
      get welcome_component_url
      assert_response :success
    end

  end
end
