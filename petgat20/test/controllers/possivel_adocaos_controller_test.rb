require "test_helper"

class PossivelAdocaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @possivel_adocao = possivel_adocaos(:one)
  end

  test "should get index" do
    get possivel_adocaos_url, as: :json
    assert_response :success
  end

  test "should create possivel_adocao" do
    assert_difference('PossivelAdocao.count') do
      post possivel_adocaos_url, params: { possivel_adocao: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show possivel_adocao" do
    get possivel_adocao_url(@possivel_adocao), as: :json
    assert_response :success
  end

  test "should update possivel_adocao" do
    patch possivel_adocao_url(@possivel_adocao), params: { possivel_adocao: {  } }, as: :json
    assert_response 200
  end

  test "should destroy possivel_adocao" do
    assert_difference('PossivelAdocao.count', -1) do
      delete possivel_adocao_url(@possivel_adocao), as: :json
    end

    assert_response 204
  end
end
