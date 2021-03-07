require "application_system_test_case"

class ProcessorsTest < ApplicationSystemTestCase
  setup do
    @processor = processors(:one)
  end

  test "visiting the index" do
    visit processors_url
    assert_selector "h1", text: "Processors"
  end

  test "creating a Processor" do
    visit processors_url
    click_on "New Processor"

    fill_in "Brand", with: @processor.brand
    fill_in "Category", with: @processor.category
    fill_in "Country", with: @processor.country
    fill_in "Crystalcodename", with: @processor.crystalcodename
    fill_in "Description", with: @processor.description
    fill_in "Model", with: @processor.model
    fill_in "Name", with: @processor.name
    fill_in "Price", with: @processor.price
    fill_in "Produced", with: @processor.produced
    fill_in "Socket", with: @processor.socket
    click_on "Create Processor"

    assert_text "Processor was successfully created"
    click_on "Back"
  end

  test "updating a Processor" do
    visit processors_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @processor.brand
    fill_in "Category", with: @processor.category
    fill_in "Country", with: @processor.country
    fill_in "Crystalcodename", with: @processor.crystalcodename
    fill_in "Description", with: @processor.description
    fill_in "Model", with: @processor.model
    fill_in "Name", with: @processor.name
    fill_in "Price", with: @processor.price
    fill_in "Produced", with: @processor.produced
    fill_in "Socket", with: @processor.socket
    click_on "Update Processor"

    assert_text "Processor was successfully updated"
    click_on "Back"
  end

  test "destroying a Processor" do
    visit processors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Processor was successfully destroyed"
  end
end
