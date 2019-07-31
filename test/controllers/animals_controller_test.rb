require 'test_helper'

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal = animals(:one)
  end

  test "should get index" do
    get animals_url, as: :json
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post animals_url, params: { animal: { description: @animal.description, fake_scientific_name: @animal.fake_scientific_name, image_url: @animal.image_url, name: @animal.name } }, as: :json
    end

    assert_response 201
  end

  test "should show animal" do
    get animal_url(@animal), as: :json
    assert_response :success
  end

  test "should update animal" do
    patch animal_url(@animal), params: { animal: { description: @animal.description, fake_scientific_name: @animal.fake_scientific_name, image_url: @animal.image_url, name: @animal.name } }, as: :json
    assert_response 200
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete animal_url(@animal), as: :json
    end

    assert_response 204
  end
end
