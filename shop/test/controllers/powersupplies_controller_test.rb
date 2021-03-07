require "test_helper"

class PowersuppliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @powersupply = powersupplies(:one)
  end

  test "should get index" do
    get powersupplies_url
    assert_response :success
  end

  test "should get new" do
    get new_powersupply_url
    assert_response :success
  end

  test "should create powersupply" do
    assert_difference('Powersupply.count') do
      post powersupplies_url, params: { powersupply: { brand_id: @powersupply.brand_id, category_id: @powersupply.category_id, country_id: @powersupply.country_id, description: @powersupply.description, efficiency: @powersupply.efficiency, name: @powersupply.name, pfc: @powersupply.pfc, power: @powersupply.power, price: @powersupply.price, produced: @powersupply.produced } }
    end

    assert_redirected_to powersupply_url(Powersupply.last)
  end

  test "should show powersupply" do
    get powersupply_url(@powersupply)
    assert_response :success
  end

  test "should get edit" do
    get edit_powersupply_url(@powersupply)
    assert_response :success
  end

  test "should update powersupply" do
    patch powersupply_url(@powersupply), params: { powersupply: { brand_id: @powersupply.brand_id, category_id: @powersupply.category_id, country_id: @powersupply.country_id, description: @powersupply.description, efficiency: @powersupply.efficiency, name: @powersupply.name, pfc: @powersupply.pfc, power: @powersupply.power, price: @powersupply.price, produced: @powersupply.produced } }
    assert_redirected_to powersupply_url(@powersupply)
  end

  test "should destroy powersupply" do
    assert_difference('Powersupply.count', -1) do
      delete powersupply_url(@powersupply)
    end

    assert_redirected_to powersupplies_url
  end
end
