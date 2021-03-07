require "application_system_test_case"

class CoolersTest < ApplicationSystemTestCase
  setup do
    @cooler = coolers(:one)
  end

  test "visiting the index" do
    visit coolers_url
    assert_selector "h1", text: "Coolers"
  end

  test "creating a Cooler" do
    visit coolers_url
    click_on "New Cooler"

    fill_in "Brand", with: @cooler.brand_id
    fill_in "Category", with: @cooler.category_id
    fill_in "Cooling", with: @cooler.cooling_id
    fill_in "Country", with: @cooler.country_id
    fill_in "Description", with: @cooler.description
    fill_in "Name", with: @cooler.name
    fill_in "Price", with: @cooler.price
    fill_in "Produced", with: @cooler.produced
    fill_in "Soket", with: @cooler.soket
    click_on "Create Cooler"

    assert_text "Cooler was successfully created"
    click_on "Back"
  end

  test "updating a Cooler" do
    visit coolers_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @cooler.brand_id
    fill_in "Category", with: @cooler.category_id
    fill_in "Cooling", with: @cooler.cooling_id
    fill_in "Country", with: @cooler.country_id
    fill_in "Description", with: @cooler.description
    fill_in "Name", with: @cooler.name
    fill_in "Price", with: @cooler.price
    fill_in "Produced", with: @cooler.produced
    fill_in "Soket", with: @cooler.soket
    click_on "Update Cooler"

    assert_text "Cooler was successfully updated"
    click_on "Back"
  end

  test "destroying a Cooler" do
    visit coolers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cooler was successfully destroyed"
  end
end
