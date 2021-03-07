require "test_helper"

class MonoblocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monoblock = monoblocks(:one)
  end

  test "should get index" do
    get monoblocks_url
    assert_response :success
  end

  test "should get new" do
    get new_monoblock_url
    assert_response :success
  end

  test "should create monoblock" do
    assert_difference('Monoblock.count') do
      post monoblocks_url, params: { monoblock: { brand_id: @monoblock.brand_id, category_id: @monoblock.category_id, color_id: @monoblock.color_id, country_id: @monoblock.country_id, description: @monoblock.description, diagonal: @monoblock.diagonal, name: @monoblock.name, os_id: @monoblock.os_id, price: @monoblock.price, produced: @monoblock.produced, resolution: @monoblock.resolution } }
    end

    assert_redirected_to monoblock_url(Monoblock.last)
  end

  test "should show monoblock" do
    get monoblock_url(@monoblock)
    assert_response :success
  end

  test "should get edit" do
    get edit_monoblock_url(@monoblock)
    assert_response :success
  end

  test "should update monoblock" do
    patch monoblock_url(@monoblock), params: { monoblock: { brand_id: @monoblock.brand_id, category_id: @monoblock.category_id, color_id: @monoblock.color_id, country_id: @monoblock.country_id, description: @monoblock.description, diagonal: @monoblock.diagonal, name: @monoblock.name, os_id: @monoblock.os_id, price: @monoblock.price, produced: @monoblock.produced, resolution: @monoblock.resolution } }
    assert_redirected_to monoblock_url(@monoblock)
  end

  test "should destroy monoblock" do
    assert_difference('Monoblock.count', -1) do
      delete monoblock_url(@monoblock)
    end

    assert_redirected_to monoblocks_url
  end
end
