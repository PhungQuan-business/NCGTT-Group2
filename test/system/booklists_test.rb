require "application_system_test_case"

class BooklistsTest < ApplicationSystemTestCase
  setup do
    @booklist = booklists(:one)
  end

  test "visiting the index" do
    visit booklists_url
    assert_selector "h1", text: "Booklists"
  end

  test "should create booklist" do
    visit booklists_url
    click_on "New booklist"

    fill_in "Author", with: @booklist.author
    check "Available" if @booklist.available
    fill_in "Bookid", with: @booklist.bookid
    fill_in "Publisher", with: @booklist.publisher
    fill_in "Tilte", with: @booklist.tilte
    fill_in "Type", with: @booklist.type_id
    fill_in "Year", with: @booklist.year
    click_on "Create Booklist"

    assert_text "Booklist was successfully created"
    click_on "Back"
  end

  test "should update Booklist" do
    visit booklist_url(@booklist)
    click_on "Edit this booklist", match: :first

    fill_in "Author", with: @booklist.author
    check "Available" if @booklist.available
    fill_in "Bookid", with: @booklist.bookid
    fill_in "Publisher", with: @booklist.publisher
    fill_in "Tilte", with: @booklist.tilte
    fill_in "Type", with: @booklist.type_id
    fill_in "Year", with: @booklist.year
    click_on "Update Booklist"

    assert_text "Booklist was successfully updated"
    click_on "Back"
  end

  test "should destroy Booklist" do
    visit booklist_url(@booklist)
    click_on "Destroy this booklist", match: :first

    assert_text "Booklist was successfully destroyed"
  end
end
