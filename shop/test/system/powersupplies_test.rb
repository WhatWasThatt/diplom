require "application_system_test_case"

class PowersuppliesTest < ApplicationSystemTestCase
  setup do
    @powersupply = powersupplies(:one)
  end

  test "visiting the index" do
    visit powersupplies_url
    assert_selector "h1", text: "Powersupplies"
  end

  test "creating a Powersupply" do
    visit powersupplies_url
    click_on "New Powersupply"

    fill_in "Brand", with: @powersupply.brand_id
    fill_in "Category", with: @powersupply.category_id
    fill_in "Country", with: @powersupply.country_id
    fill_in "Description", with: @powersupply.description
    fill_in "Efficiency", with: @powersupply.efficiency
    fill_in "Name", with: @powersupply.name
    fill_in "Pfc", with: @powersupply.pfc
    fill_in "Power", with: @powersupply.power
    fill_in "Price", with: @powersupply.price
    fill_in "Produced", with: @powersupply.produced
    click_on "Create Powersupply"

    assert_text "Powersupply was successfully created"
    click_on "Back"
  end

  test "updating a Powersupply" do
    visit powersupplies_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @powersupply.brand_id
    fill_in "Category", with: @powersupply.category_id
    fill_in "Country", with: @powersupply.country_id
    fill_in "Description", with: @powersupply.description
    fill_in "Efficiency", with: @powersupply.efficiency
    fill_in "Name", with: @powersupply.name
    fill_in "Pfc", with: @powersupply.pfc
    fill_in "Power", with: @powersupply.power
    fill_in "Price", with: @powersupply.price
    fill_in "Produced", with: @powersupply.produced
    click_on "Update Powersupply"

    assert_text "Powersupply was successfully updated"
    click_on "Back"
  end

  test "destroying a Powersupply" do
    visit powersupplies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Powersupply was successfully destroyed"
  end
end
