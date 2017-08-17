require 'test_helper'

class UniversosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @universo = universos(:one)
  end

  test "should get index" do
    get universos_url
    assert_response :success
  end

  test "should get new" do
    get new_universo_url
    assert_response :success
  end

  test "should create universo" do
    assert_difference('Universo.count') do
      post universos_url, params: { universo: { Costelacion: @universo.Costelacion, Distancia: @universo.Distancia } }
    end

    assert_redirected_to universo_url(Universo.last)
  end

  test "should show universo" do
    get universo_url(@universo)
    assert_response :success
  end

  test "should get edit" do
    get edit_universo_url(@universo)
    assert_response :success
  end

  test "should update universo" do
    patch universo_url(@universo), params: { universo: { Costelacion: @universo.Costelacion, Distancia: @universo.Distancia } }
    assert_redirected_to universo_url(@universo)
  end

  test "should destroy universo" do
    assert_difference('Universo.count', -1) do
      delete universo_url(@universo)
    end

    assert_redirected_to universos_url
  end
end
