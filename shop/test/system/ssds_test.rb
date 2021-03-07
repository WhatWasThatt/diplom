require "application_system_test_case"

class SsdsTest < ApplicationSystemTestCase
  setup do
    @ssd = ssds(:one)
  end

  test "visiting the index" do
    visit ssds_url
    assert_selector "h1", text: "Ssds"
  end

  test "creating a Ssd" do
    visit ssds_url
    click_on "New Ssd"

    fill_in "Brand", with: @ssd.brand_id
    fill_in "Category", with: @ssd.category_id
    fill_in "Controller", with: @ssd.controller
    fill_in "Country", with: @ssd.country_id
    fill_in "Description", with: @ssd.description
    fill_in "Factor", with: @ssd.factor
    fill_in "Interface", with: @ssd.interface
    fill_in "Name", with: @ssd.name
    fill_in "Price", with: @ssd.price
    fill_in "Produced", with: @ssd.produced
    fill_in "Type", with: @ssd.type
    fill_in "Volume", with: @ssd.volume
    click_on "Create Ssd"

    assert_text "Ssd was successfully created"
    click_on "Back"
  end

  test "updating a Ssd" do
    visit ssds_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @ssd.brand_id
    fill_in "Category", with: @ssd.category_id
    fill_in "Controller", with: @ssd.controller
    fill_in "Country", with: @ssd.country_id
    fill_in "Description", with: @ssd.description
    fill_in "Factor", with: @ssd.factor
    fill_in "Interface", with: @ssd.interface
    fill_in "Name", with: @ssd.name
    fill_in "Price", with: @ssd.price
    fill_in "Produced", with: @ssd.produced
    fill_in "Type", with: @ssd.type
    fill_in "Volume", with: @ssd.volume
    click_on "Update Ssd"

    assert_text "Ssd was successfully updated"
    click_on "Back"
  end

  test "destroying a Ssd" do
    visit ssds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ssd was successfully destroyed"
  end
end
