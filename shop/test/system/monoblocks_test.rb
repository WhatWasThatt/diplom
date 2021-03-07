require "application_system_test_case"

class MonoblocksTest < ApplicationSystemTestCase
  setup do
    @monoblock = monoblocks(:one)
  end

  test "visiting the index" do
    visit monoblocks_url
    assert_selector "h1", text: "Monoblocks"
  end

  test "creating a Monoblock" do
    visit monoblocks_url
    click_on "New Monoblock"

    fill_in "Brand", with: @monoblock.brand_id
    fill_in "Category", with: @monoblock.category_id
    fill_in "Color", with: @monoblock.color_id
    fill_in "Country", with: @monoblock.country_id
    fill_in "Description", with: @monoblock.description
    fill_in "Diagonal", with: @monoblock.diagonal
    fill_in "Name", with: @monoblock.name
    fill_in "Os", with: @monoblock.os_id
    fill_in "Price", with: @monoblock.price
    fill_in "Produced", with: @monoblock.produced
    fill_in "Resolution", with: @monoblock.resolution
    click_on "Create Monoblock"

    assert_text "Monoblock was successfully created"
    click_on "Back"
  end

  test "updating a Monoblock" do
    visit monoblocks_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @monoblock.brand_id
    fill_in "Category", with: @monoblock.category_id
    fill_in "Color", with: @monoblock.color_id
    fill_in "Country", with: @monoblock.country_id
    fill_in "Description", with: @monoblock.description
    fill_in "Diagonal", with: @monoblock.diagonal
    fill_in "Name", with: @monoblock.name
    fill_in "Os", with: @monoblock.os_id
    fill_in "Price", with: @monoblock.price
    fill_in "Produced", with: @monoblock.produced
    fill_in "Resolution", with: @monoblock.resolution
    click_on "Update Monoblock"

    assert_text "Monoblock was successfully updated"
    click_on "Back"
  end

  test "destroying a Monoblock" do
    visit monoblocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Monoblock was successfully destroyed"
  end
end
