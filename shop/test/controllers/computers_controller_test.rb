require "test_helper"

class ComputersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @computer = computers(:one)
  end

  test "should get index" do
    get computers_url
    assert_response :success
  end

  test "should get new" do
    get new_computer_url
    assert_response :success
  end

  test "should create computer" do
    assert_difference('Computer.count') do
      post computers_url, params: { computer: { brand_id: @computer.brand_id, category_id: @computer.category_id, color_id: @computer.color_id, country_id: @computer.country_id, description: @computer.description, height: @computer.height, name: @computer.name, os_id: @computer.os_id, price: @computer.price, produced: @computer.produced, width: @computer.width } }
    end

    assert_redirected_to computer_url(Computer.last)
  end

  test "should show computer" do
    get computer_url(@computer)
    assert_response :success
  end

  test "should get edit" do
    get edit_computer_url(@computer)
    assert_response :success
  end

  test "should update computer" do
    patch computer_url(@computer), params: { computer: { brand_id: @computer.brand_id, category_id: @computer.category_id, color_id: @computer.color_id, country_id: @computer.country_id, description: @computer.description, height: @computer.height, name: @computer.name, os_id: @computer.os_id, price: @computer.price, produced: @computer.produced, width: @computer.width } }
    assert_redirected_to computer_url(@computer)
  end

  test "should destroy computer" do
    assert_difference('Computer.count', -1) do
      delete computer_url(@computer)
    end

    assert_redirected_to computers_url
  end
end
