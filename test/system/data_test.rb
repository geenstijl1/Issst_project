require "application_system_test_case"

class DataTest < ApplicationSystemTestCase
  setup do
    @datum = data(:one)
  end

  test "visiting the index" do
    visit data_url
    assert_selector "h1", text: "Data"
  end

  test "creating a Datum" do
    visit data_url
    click_on "New Datum"

    fill_in "Fecha Oficio", with: @datum.fecha_oficio
    fill_in "Fecha Recepcion", with: @datum.fecha_recepcion
    fill_in "Nombre Promovente", with: @datum.nombre_promovente
    fill_in "Numero Juicio", with: @datum.numero_juicio
    fill_in "Numero Oficio", with: @datum.numero_oficio
    fill_in "Turnado", with: @datum.turnado
    fill_in "Turno", with: @datum.turno
    click_on "Create Datum"

    assert_text "Datum was successfully created"
    click_on "Back"
  end

  test "updating a Datum" do
    visit data_url
    click_on "Edit", match: :first

    fill_in "Fecha Oficio", with: @datum.fecha_oficio
    fill_in "Fecha Recepcion", with: @datum.fecha_recepcion
    fill_in "Nombre Promovente", with: @datum.nombre_promovente
    fill_in "Numero Juicio", with: @datum.numero_juicio
    fill_in "Numero Oficio", with: @datum.numero_oficio
    fill_in "Turnado", with: @datum.turnado
    fill_in "Turno", with: @datum.turno
    click_on "Update Datum"

    assert_text "Datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Datum" do
    visit data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Datum was successfully destroyed"
  end
end
