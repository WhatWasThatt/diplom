require "application_system_test_case"

class HarddisksTest < ApplicationSystemTestCase
  setup do
    @harddisk = harddisks(:one)
  end

  test "visiting the index" do
    visit harddisks_url
    assert_selector "h1", text: "Harddisks"
  end

  test "creating a Harddisk" do
    visit harddisks_url
    click_on "New Harddisk"

    fill_in "Brand", with: @harddisk.brand_id
    fill_in "Category", with: @harddisk.category_id
    fill_in "Country", with: @harddisk.country_id
    fill_in "Description", with: @harddisk.description
    fill_in "Factor", with: @harddisk.factor
    fill_in "Interface", with: @harddisk.interface
    fill_in "Name", with: @harddisk.name
    fill_in "Price", with: @harddisk.price
    fill_in "Produced", with: @harddisk.produced
    fill_in "Volume", with: @harddisk.volume
    click_on "Create Harddisk"

    assert_text "Harddisk was successfully created"
    click_on "Back"
  end

  test "updating a Harddisk" do
    visit harddisks_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @harddisk.brand_id
    fill_in "Category", with: @harddisk.category_id
    fill_in "Country", with: @harddisk.country_id
    fill_in "Description", with: @harddisk.description
    fill_in "Factor", with: @harddisk.factor
    fill_in "Interface", with: @harddisk.interface
    fill_in "Name", with: @harddisk.name
    fill_in "Price", with: @harddisk.price
    fill_in "Produced", with: @harddisk.produced
    fill_in "Volume", with: @harddisk.volume
    click_on "Update Harddisk"

    assert_text "Harddisk was successfully updated"
    click_on "Back"
  end

  test "destroying a Harddisk" do
    visit harddisks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Harddisk was successfully destroyed"
  end
end
