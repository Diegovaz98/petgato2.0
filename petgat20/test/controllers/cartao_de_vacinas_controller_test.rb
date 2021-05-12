require "test_helper"

class CartaoDeVacinasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cartao_de_vacina = cartao_de_vacinas(:one)
  end

  test "should get index" do
    get cartao_de_vacinas_url, as: :json
    assert_response :success
  end

  test "should create cartao_de_vacina" do
    assert_difference('CartaoDeVacina.count') do
      post cartao_de_vacinas_url, params: { cartao_de_vacina: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show cartao_de_vacina" do
    get cartao_de_vacina_url(@cartao_de_vacina), as: :json
    assert_response :success
  end

  test "should update cartao_de_vacina" do
    patch cartao_de_vacina_url(@cartao_de_vacina), params: { cartao_de_vacina: {  } }, as: :json
    assert_response 200
  end

  test "should destroy cartao_de_vacina" do
    assert_difference('CartaoDeVacina.count', -1) do
      delete cartao_de_vacina_url(@cartao_de_vacina), as: :json
    end

    assert_response 204
  end
end
