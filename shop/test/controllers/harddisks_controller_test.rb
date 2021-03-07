require "test_helper"

class HarddisksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @harddisk = harddisks(:one)
  end

  test "should get index" do
    get harddisks_url
    assert_response :success
  end

  test "should get new" do
    get new_harddisk_url
    assert_response :success
  end

  test "should create harddisk" do
    assert_difference('Harddisk.count') do
      post harddisks_url, params: { harddisk: { brand_id: @harddisk.brand_id, category_id: @harddisk.category_id, country_id: @harddisk.country_id, description: @harddisk.description, factor: @harddisk.factor, interface: @harddisk.interface, name: @harddisk.name, price: @harddisk.price, produced: @harddisk.produced, volume: @harddisk.volume } }
    end

    assert_redirected_to harddisk_url(Harddisk.last)
  end

  test "should show harddisk" do
    get harddisk_url(@harddisk)
    assert_response :success
  end

  test "should get edit" do
    get edit_harddisk_url(@harddisk)
    assert_response :success
  end

  test "should update harddisk" do
    patch harddisk_url(@harddisk), params: { harddisk: { brand_id: @harddisk.brand_id, category_id: @harddisk.category_id, country_id: @harddisk.country_id, description: @harddisk.description, factor: @harddisk.factor, interface: @harddisk.interface, name: @harddisk.name, price: @harddisk.price, produced: @harddisk.produced, volume: @harddisk.volume } }
    assert_redirected_to harddisk_url(@harddisk)
  end

  test "should destroy harddisk" do
    assert_difference('Harddisk.count', -1) do
      delete harddisk_url(@harddisk)
    end

    assert_redirected_to harddisks_url
  end
end
