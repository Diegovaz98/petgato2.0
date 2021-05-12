require "test_helper"

class ResponsavelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @responsavel = responsavels(:one)
  end

  test "should get index" do
    get responsavels_url, as: :json
    assert_response :success
  end

  test "should create responsavel" do
    assert_difference('Responsavel.count') do
      post responsavels_url, params: { responsavel: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show responsavel" do
    get responsavel_url(@responsavel), as: :json
    assert_response :success
  end

  test "should update responsavel" do
    patch responsavel_url(@responsavel), params: { responsavel: {  } }, as: :json
    assert_response 200
  end

  test "should destroy responsavel" do
    assert_difference('Responsavel.count', -1) do
      delete responsavel_url(@responsavel), as: :json
    end

    assert_response 204
  end
end
