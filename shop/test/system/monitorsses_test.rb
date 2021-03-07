require "application_system_test_case"

class MonitorssesTest < ApplicationSystemTestCase
  setup do
    @monitorss = monitorsses(:one)
  end

  test "visiting the index" do
    visit monitorsses_url
    assert_selector "h1", text: "Monitorsses"
  end

  test "creating a Monitorss" do
    visit monitorsses_url
    click_on "New Monitorss"

    fill_in "Brand", with: @monitorss.brand_id
    fill_in "Category", with: @monitorss.category_id
    fill_in "Color", with: @monitorss.color_id
    fill_in "Country", with: @monitorss.country_id
    fill_in "Description", with: @monitorss.description
    fill_in "Diagonal", with: @monitorss.diagonal
    fill_in "Name", with: @monitorss.name
    fill_in "Price", with: @monitorss.price
    fill_in "Produced", with: @monitorss.produced
    fill_in "Resolution", with: @monitorss.resolution
    click_on "Create Monitorss"

    assert_text "Monitorss was successfully created"
    click_on "Back"
  end

  test "updating a Monitorss" do
    visit monitorsses_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @monitorss.brand_id
    fill_in "Category", with: @monitorss.category_id
    fill_in "Color", with: @monitorss.color_id
    fill_in "Country", with: @monitorss.country_id
    fill_in "Description", with: @monitorss.description
    fill_in "Diagonal", with: @monitorss.diagonal
    fill_in "Name", with: @monitorss.name
    fill_in "Price", with: @monitorss.price
    fill_in "Produced", with: @monitorss.produced
    fill_in "Resolution", with: @monitorss.resolution
    click_on "Update Monitorss"

    assert_text "Monitorss was successfully updated"
    click_on "Back"
  end

  test "destroying a Monitorss" do
    visit monitorsses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Monitorss was successfully destroyed"
  end
end
