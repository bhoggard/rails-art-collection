require "test_helper"

class Admin::NationalitiesControllerTest < ActionDispatch::IntegrationTest
  test "get login form when accessed" do
    get admin_nationalities_url
    assert_response :redirect
    assert_redirected_to("/users/sign_in")
  end

  test "access index when logged in" do
    user = User.create!(email: "collector@example.com", password: "password", password_confirmation: "password")
    sign_in(user)
    get admin_nationalities_url
    assert_response :success
  end
end
