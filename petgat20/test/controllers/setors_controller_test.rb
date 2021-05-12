require "test_helper"

class SetorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @setor = setors(:one)
  end

  test "should get index" do
    get setors_url, as: :json
    assert_response :success
  end

  test "should create setor" do
    assert_difference('Setor.count') do
      post setors_url, params: { setor: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show setor" do
    get setor_url(@setor), as: :json
    assert_response :success
  end

  test "should update setor" do
    patch setor_url(@setor), params: { setor: {  } }, as: :json
    assert_response 200
  end

  test "should destroy setor" do
    assert_difference('Setor.count', -1) do
      delete setor_url(@setor), as: :json
    end

    assert_response 204
  end
end
