require "application_system_test_case"

class NotebooksTest < ApplicationSystemTestCase
  setup do
    @notebook = notebooks(:one)
  end

  test "visiting the index" do
    visit notebooks_url
    assert_selector "h1", text: "Notebooks"
  end

  test "creating a Notebook" do
    visit notebooks_url
    click_on "New Notebook"

    fill_in "Brand", with: @notebook.brand_id
    fill_in "Category", with: @notebook.category_id
    fill_in "Color", with: @notebook.color_id
    fill_in "Country", with: @notebook.country_id
    fill_in "Description", with: @notebook.description
    fill_in "Diagonal", with: @notebook.diagonal
    fill_in "Name", with: @notebook.name
    fill_in "Os", with: @notebook.os_id
    fill_in "Price", with: @notebook.price
    fill_in "Produced", with: @notebook.produced
    fill_in "Resolution", with: @notebook.resolution
    click_on "Create Notebook"

    assert_text "Notebook was successfully created"
    click_on "Back"
  end

  test "updating a Notebook" do
    visit notebooks_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @notebook.brand_id
    fill_in "Category", with: @notebook.category_id
    fill_in "Color", with: @notebook.color_id
    fill_in "Country", with: @notebook.country_id
    fill_in "Description", with: @notebook.description
    fill_in "Diagonal", with: @notebook.diagonal
    fill_in "Name", with: @notebook.name
    fill_in "Os", with: @notebook.os_id
    fill_in "Price", with: @notebook.price
    fill_in "Produced", with: @notebook.produced
    fill_in "Resolution", with: @notebook.resolution
    click_on "Update Notebook"

    assert_text "Notebook was successfully updated"
    click_on "Back"
  end

  test "destroying a Notebook" do
    visit notebooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notebook was successfully destroyed"
  end
end
