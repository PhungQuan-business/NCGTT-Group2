require "test_helper"

class LibrarySControllerTest < ActionDispatch::IntegrationTest
  setup do
    @library_ = library_s(:one)
  end

  test "should get index" do
    get library_s_url
    assert_response :success
  end

  test "should get new" do
    get new_library__url
    assert_response :success
  end

  test "should create library_" do
    assert_difference("Library.count") do
      post library_s_url, params: { library_: {  } }
    end

    assert_redirected_to library__url(Library.last)
  end

  test "should show library_" do
    get library__url(@library_)
    assert_response :success
  end

  test "should get edit" do
    get edit_library__url(@library_)
    assert_response :success
  end

  test "should update library_" do
    patch library__url(@library_), params: { library_: {  } }
    assert_redirected_to library__url(@library_)
  end

  test "should destroy library_" do
    assert_difference("Library.count", -1) do
      delete library__url(@library_)
    end

    assert_redirected_to library_s_url
  end
end
