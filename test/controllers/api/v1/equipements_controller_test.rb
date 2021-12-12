require "test_helper"

class Api::V1::EquipementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_equipement = api_v1_equipements(:one)
  end

  test "should get index" do
    get api_v1_equipements_url, as: :json
    assert_response :success
  end

  test "should create api_v1_equipement" do
    assert_difference('Api::V1::Equipement.count') do
      post api_v1_equipements_url, params: { api_v1_equipement: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_equipement" do
    get api_v1_equipement_url(@api_v1_equipement), as: :json
    assert_response :success
  end

  test "should update api_v1_equipement" do
    patch api_v1_equipement_url(@api_v1_equipement), params: { api_v1_equipement: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_equipement" do
    assert_difference('Api::V1::Equipement.count', -1) do
      delete api_v1_equipement_url(@api_v1_equipement), as: :json
    end

    assert_response 204
  end
end
