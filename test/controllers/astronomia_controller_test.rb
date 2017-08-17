require 'test_helper'

class AstronomiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @astronomium = astronomia(:one)
  end

  test "should get index" do
    get astronomia_url
    assert_response :success
  end

  test "should get new" do
    get new_astronomium_url
    assert_response :success
  end

  test "should create astronomium" do
    assert_difference('Astronomium.count') do
      post astronomia_url, params: { astronomium: { Estrella: @astronomium.Estrella, Galaxia: @astronomium.Galaxia, Luna: @astronomium.Luna, Planeta: @astronomium.Planeta } }
    end

    assert_redirected_to astronomium_url(Astronomium.last)
  end

  test "should show astronomium" do
    get astronomium_url(@astronomium)
    assert_response :success
  end

  test "should get edit" do
    get edit_astronomium_url(@astronomium)
    assert_response :success
  end

  test "should update astronomium" do
    patch astronomium_url(@astronomium), params: { astronomium: { Estrella: @astronomium.Estrella, Galaxia: @astronomium.Galaxia, Luna: @astronomium.Luna, Planeta: @astronomium.Planeta } }
    assert_redirected_to astronomium_url(@astronomium)
  end

  test "should destroy astronomium" do
    assert_difference('Astronomium.count', -1) do
      delete astronomium_url(@astronomium)
    end

    assert_redirected_to astronomia_url
  end
end
