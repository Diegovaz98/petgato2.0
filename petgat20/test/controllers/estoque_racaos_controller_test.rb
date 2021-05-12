require "test_helper"

class EstoqueRacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estoque_racao = estoque_racaos(:one)
  end

  test "should get index" do
    get estoque_racaos_url, as: :json
    assert_response :success
  end

  test "should create estoque_racao" do
    assert_difference('EstoqueRacao.count') do
      post estoque_racaos_url, params: { estoque_racao: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show estoque_racao" do
    get estoque_racao_url(@estoque_racao), as: :json
    assert_response :success
  end

  test "should update estoque_racao" do
    patch estoque_racao_url(@estoque_racao), params: { estoque_racao: {  } }, as: :json
    assert_response 200
  end

  test "should destroy estoque_racao" do
    assert_difference('EstoqueRacao.count', -1) do
      delete estoque_racao_url(@estoque_racao), as: :json
    end

    assert_response 204
  end
end
