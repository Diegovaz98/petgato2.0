require "test_helper"

class VoluntariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voluntario = voluntarios(:one)
  end

  test "should get index" do
    get voluntarios_url, as: :json
    assert_response :success
  end

  test "should create voluntario" do
    assert_difference('Voluntario.count') do
      post voluntarios_url, params: { voluntario: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show voluntario" do
    get voluntario_url(@voluntario), as: :json
    assert_response :success
  end

  test "should update voluntario" do
    patch voluntario_url(@voluntario), params: { voluntario: {  } }, as: :json
    assert_response 200
  end

  test "should destroy voluntario" do
    assert_difference('Voluntario.count', -1) do
      delete voluntario_url(@voluntario), as: :json
    end

    assert_response 204
  end
end
