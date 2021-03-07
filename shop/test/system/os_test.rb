require "application_system_test_case"

class OsTest < ApplicationSystemTestCase
  setup do
    @o = os(:one)
  end

  test "visiting the index" do
    visit os_url
    assert_selector "h1", text: "Os"
  end

  test "creating a O" do
    visit os_url
    click_on "New O"

    fill_in "Name", with: @o.name
    click_on "Create O"

    assert_text "O was successfully created"
    click_on "Back"
  end

  test "updating a O" do
    visit os_url
    click_on "Edit", match: :first

    fill_in "Name", with: @o.name
    click_on "Update O"

    assert_text "O was successfully updated"
    click_on "Back"
  end

  test "destroying a O" do
    visit os_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "O was successfully destroyed"
  end
end
