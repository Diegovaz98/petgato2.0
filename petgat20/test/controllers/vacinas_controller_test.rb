require "test_helper"

class VacinasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vacina = vacinas(:one)
  end

  test "should get index" do
    get vacinas_url, as: :json
    assert_response :success
  end

  test "should create vacina" do
    assert_difference('Vacina.count') do
      post vacinas_url, params: { vacina: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show vacina" do
    get vacina_url(@vacina), as: :json
    assert_response :success
  end

  test "should update vacina" do
    patch vacina_url(@vacina), params: { vacina: {  } }, as: :json
    assert_response 200
  end

  test "should destroy vacina" do
    assert_difference('Vacina.count', -1) do
      delete vacina_url(@vacina), as: :json
    end

    assert_response 204
  end
end
