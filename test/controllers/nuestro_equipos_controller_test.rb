require 'test_helper'

class NuestroEquiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nuestro_equipo = nuestro_equipos(:one)
  end

  test "should get index" do
    get nuestro_equipos_url
    assert_response :success
  end

  test "should get new" do
    get new_nuestro_equipo_url
    assert_response :success
  end

  test "should create nuestro_equipo" do
    assert_difference('NuestroEquipo.count') do
      post nuestro_equipos_url, params: { nuestro_equipo: {  } }
    end

    assert_redirected_to nuestro_equipo_url(NuestroEquipo.last)
  end

  test "should show nuestro_equipo" do
    get nuestro_equipo_url(@nuestro_equipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_nuestro_equipo_url(@nuestro_equipo)
    assert_response :success
  end

  test "should update nuestro_equipo" do
    patch nuestro_equipo_url(@nuestro_equipo), params: { nuestro_equipo: {  } }
    assert_redirected_to nuestro_equipo_url(@nuestro_equipo)
  end

  test "should destroy nuestro_equipo" do
    assert_difference('NuestroEquipo.count', -1) do
      delete nuestro_equipo_url(@nuestro_equipo)
    end

    assert_redirected_to nuestro_equipos_url
  end
end
