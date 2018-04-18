require 'test_helper'

class InformacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @informacion = informacions(:one)
  end

  test "should get index" do
    get informacions_url
    assert_response :success
  end

  test "should get new" do
    get new_informacion_url
    assert_response :success
  end

  test "should create informacion" do
    assert_difference('Informacion.count') do
      post informacions_url, params: { informacion: {  } }
    end

    assert_redirected_to informacion_url(Informacion.last)
  end

  test "should show informacion" do
    get informacion_url(@informacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_informacion_url(@informacion)
    assert_response :success
  end

  test "should update informacion" do
    patch informacion_url(@informacion), params: { informacion: {  } }
    assert_redirected_to informacion_url(@informacion)
  end

  test "should destroy informacion" do
    assert_difference('Informacion.count', -1) do
      delete informacion_url(@informacion)
    end

    assert_redirected_to informacions_url
  end
end
