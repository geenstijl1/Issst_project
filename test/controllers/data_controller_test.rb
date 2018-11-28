require 'test_helper'

class DataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datum = data(:one)
  end

  test "should get index" do
    get data_url
    assert_response :success
  end

  test "should get new" do
    get new_datum_url
    assert_response :success
  end

  test "should create datum" do
    assert_difference('Datum.count') do
      post data_url, params: { datum: { fecha_oficio: @datum.fecha_oficio, fecha_recepcion: @datum.fecha_recepcion, nombre_promovente: @datum.nombre_promovente, numero_juicio: @datum.numero_juicio, numero_oficio: @datum.numero_oficio, turnado: @datum.turnado, turno: @datum.turno } }
    end

    assert_redirected_to datum_url(Datum.last)
  end

  test "should show datum" do
    get datum_url(@datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_datum_url(@datum)
    assert_response :success
  end

  test "should update datum" do
    patch datum_url(@datum), params: { datum: { fecha_oficio: @datum.fecha_oficio, fecha_recepcion: @datum.fecha_recepcion, nombre_promovente: @datum.nombre_promovente, numero_juicio: @datum.numero_juicio, numero_oficio: @datum.numero_oficio, turnado: @datum.turnado, turno: @datum.turno } }
    assert_redirected_to datum_url(@datum)
  end

  test "should destroy datum" do
    assert_difference('Datum.count', -1) do
      delete datum_url(@datum)
    end

    assert_redirected_to data_url
  end
end
