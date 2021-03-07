require "test_helper"

class NotebooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notebook = notebooks(:one)
  end

  test "should get index" do
    get notebooks_url
    assert_response :success
  end

  test "should get new" do
    get new_notebook_url
    assert_response :success
  end

  test "should create notebook" do
    assert_difference('Notebook.count') do
      post notebooks_url, params: { notebook: { brand_id: @notebook.brand_id, category_id: @notebook.category_id, color_id: @notebook.color_id, country_id: @notebook.country_id, description: @notebook.description, diagonal: @notebook.diagonal, name: @notebook.name, os_id: @notebook.os_id, price: @notebook.price, produced: @notebook.produced, resolution: @notebook.resolution } }
    end

    assert_redirected_to notebook_url(Notebook.last)
  end

  test "should show notebook" do
    get notebook_url(@notebook)
    assert_response :success
  end

  test "should get edit" do
    get edit_notebook_url(@notebook)
    assert_response :success
  end

  test "should update notebook" do
    patch notebook_url(@notebook), params: { notebook: { brand_id: @notebook.brand_id, category_id: @notebook.category_id, color_id: @notebook.color_id, country_id: @notebook.country_id, description: @notebook.description, diagonal: @notebook.diagonal, name: @notebook.name, os_id: @notebook.os_id, price: @notebook.price, produced: @notebook.produced, resolution: @notebook.resolution } }
    assert_redirected_to notebook_url(@notebook)
  end

  test "should destroy notebook" do
    assert_difference('Notebook.count', -1) do
      delete notebook_url(@notebook)
    end

    assert_redirected_to notebooks_url
  end
end
