require "application_system_test_case"

class LibrariesTest < ApplicationSystemTestCase
  setup do
    @library_ = library_s(:one)
  end

  test "visiting the index" do
    visit library_s_url
    assert_selector "h1", text: "Library s"
  end

  test "should create library " do
    visit library_s_url
    click_on "New library "

    click_on "Create Library "

    assert_text "Library  was successfully created"
    click_on "Back"
  end

  test "should update Library " do
    visit library__url(@library_)
    click_on "Edit this library ", match: :first

    click_on "Update Library "

    assert_text "Library  was successfully updated"
    click_on "Back"
  end

  test "should destroy Library " do
    visit library__url(@library_)
    click_on "Destroy this library ", match: :first

    assert_text "Library  was successfully destroyed"
  end
end
