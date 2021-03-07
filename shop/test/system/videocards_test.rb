require "application_system_test_case"

class VideocardsTest < ApplicationSystemTestCase
  setup do
    @videocard = videocards(:one)
  end

  test "visiting the index" do
    visit videocards_url
    assert_selector "h1", text: "Videocards"
  end

  test "creating a Videocard" do
    visit videocards_url
    click_on "New Videocard"

    fill_in "Brand", with: @videocard.brand_id
    fill_in "Category", with: @videocard.category_id
    fill_in "Country", with: @videocard.country_id
    fill_in "Description", with: @videocard.description
    fill_in "Memory", with: @videocard.memory
    fill_in "Name", with: @videocard.name
    fill_in "Price", with: @videocard.price
    fill_in "Processor", with: @videocard.processor
    fill_in "Produced", with: @videocard.produced
    fill_in "Type", with: @videocard.type
    click_on "Create Videocard"

    assert_text "Videocard was successfully created"
    click_on "Back"
  end

  test "updating a Videocard" do
    visit videocards_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @videocard.brand_id
    fill_in "Category", with: @videocard.category_id
    fill_in "Country", with: @videocard.country_id
    fill_in "Description", with: @videocard.description
    fill_in "Memory", with: @videocard.memory
    fill_in "Name", with: @videocard.name
    fill_in "Price", with: @videocard.price
    fill_in "Processor", with: @videocard.processor
    fill_in "Produced", with: @videocard.produced
    fill_in "Type", with: @videocard.type
    click_on "Update Videocard"

    assert_text "Videocard was successfully updated"
    click_on "Back"
  end

  test "destroying a Videocard" do
    visit videocards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Videocard was successfully destroyed"
  end
end
