require "test_helper"

class MonitorssesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monitorss = monitorsses(:one)
  end

  test "should get index" do
    get monitorsses_url
    assert_response :success
  end

  test "should get new" do
    get new_monitorss_url
    assert_response :success
  end

  test "should create monitorss" do
    assert_difference('Monitorss.count') do
      post monitorsses_url, params: { monitorss: { brand_id: @monitorss.brand_id, category_id: @monitorss.category_id, color_id: @monitorss.color_id, country_id: @monitorss.country_id, description: @monitorss.description, diagonal: @monitorss.diagonal, name: @monitorss.name, price: @monitorss.price, produced: @monitorss.produced, resolution: @monitorss.resolution } }
    end

    assert_redirected_to monitorss_url(Monitorss.last)
  end

  test "should show monitorss" do
    get monitorss_url(@monitorss)
    assert_response :success
  end

  test "should get edit" do
    get edit_monitorss_url(@monitorss)
    assert_response :success
  end

  test "should update monitorss" do
    patch monitorss_url(@monitorss), params: { monitorss: { brand_id: @monitorss.brand_id, category_id: @monitorss.category_id, color_id: @monitorss.color_id, country_id: @monitorss.country_id, description: @monitorss.description, diagonal: @monitorss.diagonal, name: @monitorss.name, price: @monitorss.price, produced: @monitorss.produced, resolution: @monitorss.resolution } }
    assert_redirected_to monitorss_url(@monitorss)
  end

  test "should destroy monitorss" do
    assert_difference('Monitorss.count', -1) do
      delete monitorss_url(@monitorss)
    end

    assert_redirected_to monitorsses_url
  end
end
