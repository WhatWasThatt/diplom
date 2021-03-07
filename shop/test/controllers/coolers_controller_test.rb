require "test_helper"

class CoolersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cooler = coolers(:one)
  end

  test "should get index" do
    get coolers_url
    assert_response :success
  end

  test "should get new" do
    get new_cooler_url
    assert_response :success
  end

  test "should create cooler" do
    assert_difference('Cooler.count') do
      post coolers_url, params: { cooler: { brand_id: @cooler.brand_id, category_id: @cooler.category_id, cooling_id: @cooler.cooling_id, country_id: @cooler.country_id, description: @cooler.description, name: @cooler.name, price: @cooler.price, produced: @cooler.produced, soket: @cooler.soket } }
    end

    assert_redirected_to cooler_url(Cooler.last)
  end

  test "should show cooler" do
    get cooler_url(@cooler)
    assert_response :success
  end

  test "should get edit" do
    get edit_cooler_url(@cooler)
    assert_response :success
  end

  test "should update cooler" do
    patch cooler_url(@cooler), params: { cooler: { brand_id: @cooler.brand_id, category_id: @cooler.category_id, cooling_id: @cooler.cooling_id, country_id: @cooler.country_id, description: @cooler.description, name: @cooler.name, price: @cooler.price, produced: @cooler.produced, soket: @cooler.soket } }
    assert_redirected_to cooler_url(@cooler)
  end

  test "should destroy cooler" do
    assert_difference('Cooler.count', -1) do
      delete cooler_url(@cooler)
    end

    assert_redirected_to coolers_url
  end
end
