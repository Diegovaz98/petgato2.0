require "test_helper"

class EstoqueFarmacinhasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estoque_farmacinha = estoque_farmacinhas(:one)
  end

  test "should get index" do
    get estoque_farmacinhas_url, as: :json
    assert_response :success
  end

  test "should create estoque_farmacinha" do
    assert_difference('EstoqueFarmacinha.count') do
      post estoque_farmacinhas_url, params: { estoque_farmacinha: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show estoque_farmacinha" do
    get estoque_farmacinha_url(@estoque_farmacinha), as: :json
    assert_response :success
  end

  test "should update estoque_farmacinha" do
    patch estoque_farmacinha_url(@estoque_farmacinha), params: { estoque_farmacinha: {  } }, as: :json
    assert_response 200
  end

  test "should destroy estoque_farmacinha" do
    assert_difference('EstoqueFarmacinha.count', -1) do
      delete estoque_farmacinha_url(@estoque_farmacinha), as: :json
    end

    assert_response 204
  end
end
