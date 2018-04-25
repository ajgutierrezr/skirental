require 'test_helper'

class TerminosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @termino = terminos(:one)
  end

  test "should get index" do
    get terminos_url
    assert_response :success
  end

  test "should get new" do
    get new_termino_url
    assert_response :success
  end

  test "should create termino" do
    assert_difference('Termino.count') do
      post terminos_url, params: { termino: {  } }
    end

    assert_redirected_to termino_url(Termino.last)
  end

  test "should show termino" do
    get termino_url(@termino)
    assert_response :success
  end

  test "should get edit" do
    get edit_termino_url(@termino)
    assert_response :success
  end

  test "should update termino" do
    patch termino_url(@termino), params: { termino: {  } }
    assert_redirected_to termino_url(@termino)
  end

  test "should destroy termino" do
    assert_difference('Termino.count', -1) do
      delete termino_url(@termino)
    end

    assert_redirected_to terminos_url
  end
end
