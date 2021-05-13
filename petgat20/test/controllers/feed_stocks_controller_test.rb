require "test_helper"

class FeedStocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feed_stock = feed_stocks(:one)
  end

  test "should get index" do
    get feed_stocks_url, as: :json
    assert_response :success
  end

  test "should create feed_stock" do
    assert_difference('FeedStock.count') do
      post feed_stocks_url, params: { feed_stock: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show feed_stock" do
    get feed_stock_url(@feed_stock), as: :json
    assert_response :success
  end

  test "should update feed_stock" do
    patch feed_stock_url(@feed_stock), params: { feed_stock: {  } }, as: :json
    assert_response 200
  end

  test "should destroy feed_stock" do
    assert_difference('FeedStock.count', -1) do
      delete feed_stock_url(@feed_stock), as: :json
    end

    assert_response 204
  end
end
