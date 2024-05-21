require "application_system_test_case"

class BorrowsTest < ApplicationSystemTestCase
  setup do
    @borrow = borrows(:one)
  end

  test "visiting the index" do
    visit borrows_url
    assert_selector "h1", text: "Borrows"
  end

  test "should create borrow" do
    visit borrows_url
    click_on "New borrow"

    fill_in "Booklist", with: @borrow.booklist_id
    fill_in "Born", with: @borrow.born
    fill_in "Borrow at", with: @borrow.borrow_at
    fill_in "Name", with: @borrow.name
    fill_in "Phone", with: @borrow.phone
    fill_in "Return at", with: @borrow.return_at
    fill_in "Studentid", with: @borrow.studentid
    click_on "Create Borrow"

    assert_text "Borrow was successfully created"
    click_on "Back"
  end

  test "should update Borrow" do
    visit borrow_url(@borrow)
    click_on "Edit this borrow", match: :first

    fill_in "Booklist", with: @borrow.booklist_id
    fill_in "Born", with: @borrow.born
    fill_in "Borrow at", with: @borrow.borrow_at
    fill_in "Name", with: @borrow.name
    fill_in "Phone", with: @borrow.phone
    fill_in "Return at", with: @borrow.return_at
    fill_in "Studentid", with: @borrow.studentid
    click_on "Update Borrow"

    assert_text "Borrow was successfully updated"
    click_on "Back"
  end

  test "should destroy Borrow" do
    visit borrow_url(@borrow)
    click_on "Destroy this borrow", match: :first

    assert_text "Borrow was successfully destroyed"
  end
end
