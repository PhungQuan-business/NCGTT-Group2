require "application_system_test_case"

class ProductcategoriesTest < ApplicationSystemTestCase
  setup do
    @productcategory = productcategories(:one)
  end

  test "visiting the index" do
    visit productcategories_url
    assert_selector "h1", text: "Productcategories"
  end

  test "should create productcategory" do
    visit productcategories_url
    click_on "New productcategory"

    fill_in "Description", with: @productcategory.description
    fill_in "Name", with: @productcategory.name
    click_on "Create Productcategory"

    assert_text "Productcategory was successfully created"
    click_on "Back"
  end

  test "should update Productcategory" do
    visit productcategory_url(@productcategory)
    click_on "Edit this productcategory", match: :first

    fill_in "Description", with: @productcategory.description
    fill_in "Name", with: @productcategory.name
    click_on "Update Productcategory"

    assert_text "Productcategory was successfully updated"
    click_on "Back"
  end

  test "should destroy Productcategory" do
    visit productcategory_url(@productcategory)
    click_on "Destroy this productcategory", match: :first

    assert_text "Productcategory was successfully destroyed"
  end
end
