require "test_helper"

class PossibleAdoptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @possible_adoption = possible_adoptions(:one)
  end

  test "should get index" do
    get possible_adoptions_url, as: :json
    assert_response :success
  end

  test "should create possible_adoption" do
    assert_difference('PossibleAdoption.count') do
      post possible_adoptions_url, params: { possible_adoption: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show possible_adoption" do
    get possible_adoption_url(@possible_adoption), as: :json
    assert_response :success
  end

  test "should update possible_adoption" do
    patch possible_adoption_url(@possible_adoption), params: { possible_adoption: {  } }, as: :json
    assert_response 200
  end

  test "should destroy possible_adoption" do
    assert_difference('PossibleAdoption.count', -1) do
      delete possible_adoption_url(@possible_adoption), as: :json
    end

    assert_response 204
  end
end
