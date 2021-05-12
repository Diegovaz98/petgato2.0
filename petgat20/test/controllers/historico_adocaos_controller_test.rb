require "test_helper"

class HistoricoAdocaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historico_adocao = historico_adocaos(:one)
  end

  test "should get index" do
    get historico_adocaos_url, as: :json
    assert_response :success
  end

  test "should create historico_adocao" do
    assert_difference('HistoricoAdocao.count') do
      post historico_adocaos_url, params: { historico_adocao: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show historico_adocao" do
    get historico_adocao_url(@historico_adocao), as: :json
    assert_response :success
  end

  test "should update historico_adocao" do
    patch historico_adocao_url(@historico_adocao), params: { historico_adocao: {  } }, as: :json
    assert_response 200
  end

  test "should destroy historico_adocao" do
    assert_difference('HistoricoAdocao.count', -1) do
      delete historico_adocao_url(@historico_adocao), as: :json
    end

    assert_response 204
  end
end
