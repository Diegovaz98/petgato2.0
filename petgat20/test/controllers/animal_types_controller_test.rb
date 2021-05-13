require "test_helper"

class AnimalTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_type = animal_types(:one)
  end

  test "should get index" do
    get animal_types_url, as: :json
    assert_response :success
  end

  test "should create animal_type" do
    assert_difference('AnimalType.count') do
      post animal_types_url, params: { animal_type: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show animal_type" do
    get animal_type_url(@animal_type), as: :json
    assert_response :success
  end

  test "should update animal_type" do
    patch animal_type_url(@animal_type), params: { animal_type: {  } }, as: :json
    assert_response 200
  end

  test "should destroy animal_type" do
    assert_difference('AnimalType.count', -1) do
      delete animal_type_url(@animal_type), as: :json
    end

    assert_response 204
  end
end
