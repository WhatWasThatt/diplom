require "test_helper"

class SsdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ssd = ssds(:one)
  end

  test "should get index" do
    get ssds_url
    assert_response :success
  end

  test "should get new" do
    get new_ssd_url
    assert_response :success
  end

  test "should create ssd" do
    assert_difference('Ssd.count') do
      post ssds_url, params: { ssd: { brand_id: @ssd.brand_id, category_id: @ssd.category_id, controller: @ssd.controller, country_id: @ssd.country_id, description: @ssd.description, factor: @ssd.factor, interface: @ssd.interface, name: @ssd.name, price: @ssd.price, produced: @ssd.produced, type: @ssd.type, volume: @ssd.volume } }
    end

    assert_redirected_to ssd_url(Ssd.last)
  end

  test "should show ssd" do
    get ssd_url(@ssd)
    assert_response :success
  end

  test "should get edit" do
    get edit_ssd_url(@ssd)
    assert_response :success
  end

  test "should update ssd" do
    patch ssd_url(@ssd), params: { ssd: { brand_id: @ssd.brand_id, category_id: @ssd.category_id, controller: @ssd.controller, country_id: @ssd.country_id, description: @ssd.description, factor: @ssd.factor, interface: @ssd.interface, name: @ssd.name, price: @ssd.price, produced: @ssd.produced, type: @ssd.type, volume: @ssd.volume } }
    assert_redirected_to ssd_url(@ssd)
  end

  test "should destroy ssd" do
    assert_difference('Ssd.count', -1) do
      delete ssd_url(@ssd)
    end

    assert_redirected_to ssds_url
  end
end
