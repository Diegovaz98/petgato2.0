require "test_helper"

class AdoptionHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adoption_history = adoption_histories(:one)
  end

  test "should get index" do
    get adoption_histories_url, as: :json
    assert_response :success
  end

  test "should create adoption_history" do
    assert_difference('AdoptionHistory.count') do
      post adoption_histories_url, params: { adoption_history: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show adoption_history" do
    get adoption_history_url(@adoption_history), as: :json
    assert_response :success
  end

  test "should update adoption_history" do
    patch adoption_history_url(@adoption_history), params: { adoption_history: {  } }, as: :json
    assert_response 200
  end

  test "should destroy adoption_history" do
    assert_difference('AdoptionHistory.count', -1) do
      delete adoption_history_url(@adoption_history), as: :json
    end

    assert_response 204
  end
end
