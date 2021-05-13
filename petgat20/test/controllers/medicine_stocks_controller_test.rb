require "test_helper"

class MedicineStocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medicine_stock = medicine_stocks(:one)
  end

  test "should get index" do
    get medicine_stocks_url, as: :json
    assert_response :success
  end

  test "should create medicine_stock" do
    assert_difference('MedicineStock.count') do
      post medicine_stocks_url, params: { medicine_stock: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show medicine_stock" do
    get medicine_stock_url(@medicine_stock), as: :json
    assert_response :success
  end

  test "should update medicine_stock" do
    patch medicine_stock_url(@medicine_stock), params: { medicine_stock: {  } }, as: :json
    assert_response 200
  end

  test "should destroy medicine_stock" do
    assert_difference('MedicineStock.count', -1) do
      delete medicine_stock_url(@medicine_stock), as: :json
    end

    assert_response 204
  end
end
