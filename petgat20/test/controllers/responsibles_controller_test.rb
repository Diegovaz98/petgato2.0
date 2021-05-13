require "test_helper"

class ResponsiblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @responsible = responsibles(:one)
  end

  test "should get index" do
    get responsibles_url, as: :json
    assert_response :success
  end

  test "should create responsible" do
    assert_difference('Responsible.count') do
      post responsibles_url, params: { responsible: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show responsible" do
    get responsible_url(@responsible), as: :json
    assert_response :success
  end

  test "should update responsible" do
    patch responsible_url(@responsible), params: { responsible: {  } }, as: :json
    assert_response 200
  end

  test "should destroy responsible" do
    assert_difference('Responsible.count', -1) do
      delete responsible_url(@responsible), as: :json
    end

    assert_response 204
  end
end
