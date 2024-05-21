require "test_helper"

class LibraryControllerTest < ActionDispatch::IntegrationTest
  test "should get System" do
    get library_System_url
    assert_response :success
  end

  test "should get Management" do
    get library_Management_url
    assert_response :success
  end

  test "should get home" do
    get library_home_url
    assert_response :success
  end
end
