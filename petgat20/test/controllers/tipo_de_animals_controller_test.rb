require "test_helper"

class TipoDeAnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_de_animal = tipo_de_animals(:one)
  end

  test "should get index" do
    get tipo_de_animals_url, as: :json
    assert_response :success
  end

  test "should create tipo_de_animal" do
    assert_difference('TipoDeAnimal.count') do
      post tipo_de_animals_url, params: { tipo_de_animal: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show tipo_de_animal" do
    get tipo_de_animal_url(@tipo_de_animal), as: :json
    assert_response :success
  end

  test "should update tipo_de_animal" do
    patch tipo_de_animal_url(@tipo_de_animal), params: { tipo_de_animal: {  } }, as: :json
    assert_response 200
  end

  test "should destroy tipo_de_animal" do
    assert_difference('TipoDeAnimal.count', -1) do
      delete tipo_de_animal_url(@tipo_de_animal), as: :json
    end

    assert_response 204
  end
end
