require "test_helper"

class NationalitiesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "get login form when accessed" do
    get nationalities_url
    assert_response :redirect
    assert_redirected_to("/users/sign_in")
  end

  test "access index when logged in" do
    user =   User.create!(email: "collector@example.com", password: "password", password_confirmation: "password")
    sign_in(user)
    get nationalities_url
    assert_response :success
  end
end
