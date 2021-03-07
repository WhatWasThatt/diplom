require "test_helper"

class VideocardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @videocard = videocards(:one)
  end

  test "should get index" do
    get videocards_url
    assert_response :success
  end

  test "should get new" do
    get new_videocard_url
    assert_response :success
  end

  test "should create videocard" do
    assert_difference('Videocard.count') do
      post videocards_url, params: { videocard: { brand_id: @videocard.brand_id, category_id: @videocard.category_id, country_id: @videocard.country_id, description: @videocard.description, memory: @videocard.memory, name: @videocard.name, price: @videocard.price, processor: @videocard.processor, produced: @videocard.produced, type: @videocard.type } }
    end

    assert_redirected_to videocard_url(Videocard.last)
  end

  test "should show videocard" do
    get videocard_url(@videocard)
    assert_response :success
  end

  test "should get edit" do
    get edit_videocard_url(@videocard)
    assert_response :success
  end

  test "should update videocard" do
    patch videocard_url(@videocard), params: { videocard: { brand_id: @videocard.brand_id, category_id: @videocard.category_id, country_id: @videocard.country_id, description: @videocard.description, memory: @videocard.memory, name: @videocard.name, price: @videocard.price, processor: @videocard.processor, produced: @videocard.produced, type: @videocard.type } }
    assert_redirected_to videocard_url(@videocard)
  end

  test "should destroy videocard" do
    assert_difference('Videocard.count', -1) do
      delete videocard_url(@videocard)
    end

    assert_redirected_to videocards_url
  end
end
