require "test_helper"

class VaccineCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vaccine_card = vaccine_cards(:one)
  end

  test "should get index" do
    get vaccine_cards_url, as: :json
    assert_response :success
  end

  test "should create vaccine_card" do
    assert_difference('VaccineCard.count') do
      post vaccine_cards_url, params: { vaccine_card: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show vaccine_card" do
    get vaccine_card_url(@vaccine_card), as: :json
    assert_response :success
  end

  test "should update vaccine_card" do
    patch vaccine_card_url(@vaccine_card), params: { vaccine_card: {  } }, as: :json
    assert_response 200
  end

  test "should destroy vaccine_card" do
    assert_difference('VaccineCard.count', -1) do
      delete vaccine_card_url(@vaccine_card), as: :json
    end

    assert_response 204
  end
end
