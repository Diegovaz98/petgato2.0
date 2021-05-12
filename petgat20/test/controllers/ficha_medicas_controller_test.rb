require "test_helper"

class FichaMedicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ficha_medica = ficha_medicas(:one)
  end

  test "should get index" do
    get ficha_medicas_url, as: :json
    assert_response :success
  end

  test "should create ficha_medica" do
    assert_difference('FichaMedica.count') do
      post ficha_medicas_url, params: { ficha_medica: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show ficha_medica" do
    get ficha_medica_url(@ficha_medica), as: :json
    assert_response :success
  end

  test "should update ficha_medica" do
    patch ficha_medica_url(@ficha_medica), params: { ficha_medica: {  } }, as: :json
    assert_response 200
  end

  test "should destroy ficha_medica" do
    assert_difference('FichaMedica.count', -1) do
      delete ficha_medica_url(@ficha_medica), as: :json
    end

    assert_response 204
  end
end
