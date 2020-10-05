require 'test_helper'

class MushroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mushroom = mushrooms(:one)
  end

  test "should get index" do
    get mushrooms_url
    assert_response :success
  end

  test "should get new" do
    get new_mushroom_url
    assert_response :success
  end

  test "should create mushroom" do
    assert_difference('Mushroom.count') do
      post mushrooms_url, params: { mushroom: { characteristics: @mushroom.characteristics, common_name: @mushroom.common_name, confused_with: @mushroom.confused_with, fairy_rings: @mushroom.fairy_rings, habitat: @mushroom.habitat, img_url: @mushroom.img_url, latin_name: @mushroom.latin_name, region: @mushroom.region } }
    end

    assert_redirected_to mushroom_url(Mushroom.last)
  end

  test "should show mushroom" do
    get mushroom_url(@mushroom)
    assert_response :success
  end

  test "should get edit" do
    get edit_mushroom_url(@mushroom)
    assert_response :success
  end

  test "should update mushroom" do
    patch mushroom_url(@mushroom), params: { mushroom: { characteristics: @mushroom.characteristics, common_name: @mushroom.common_name, confused_with: @mushroom.confused_with, fairy_rings: @mushroom.fairy_rings, habitat: @mushroom.habitat, img_url: @mushroom.img_url, latin_name: @mushroom.latin_name, region: @mushroom.region } }
    assert_redirected_to mushroom_url(@mushroom)
  end

  test "should destroy mushroom" do
    assert_difference('Mushroom.count', -1) do
      delete mushroom_url(@mushroom)
    end

    assert_redirected_to mushrooms_url
  end
end
