require "test_helper"

class VaccinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vaccine = vaccines(:one)
  end

  test "should get index" do
    get vaccines_url, as: :json
    assert_response :success
  end

  test "should create vaccine" do
    assert_difference('Vaccine.count') do
      post vaccines_url, params: { vaccine: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show vaccine" do
    get vaccine_url(@vaccine), as: :json
    assert_response :success
  end

  test "should update vaccine" do
    patch vaccine_url(@vaccine), params: { vaccine: {  } }, as: :json
    assert_response 200
  end

  test "should destroy vaccine" do
    assert_difference('Vaccine.count', -1) do
      delete vaccine_url(@vaccine), as: :json
    end

    assert_response 204
  end
end
