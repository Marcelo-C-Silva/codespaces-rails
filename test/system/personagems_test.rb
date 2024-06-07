require "application_system_test_case"

class PersonagemsTest < ApplicationSystemTestCase
  setup do
    @personagem = personagems(:one)
  end

  test "visiting the index" do
    visit personagems_url
    assert_selector "h1", text: "Personagems"
  end

  test "should create personagem" do
    visit personagems_url
    click_on "New personagem"

    fill_in "Atributos", with: @personagem.atributos
    fill_in "Classe", with: @personagem.classe
    fill_in "Habilidades", with: @personagem.habilidades
    fill_in "Imagem path", with: @personagem.imagem_path
    fill_in "Nome", with: @personagem.nome
    fill_in "Raca", with: @personagem.raca
    click_on "Create Personagem"

    assert_text "Personagem was successfully created"
    click_on "Back"
  end

  test "should update Personagem" do
    visit personagem_url(@personagem)
    click_on "Edit this personagem", match: :first

    fill_in "Atributos", with: @personagem.atributos
    fill_in "Classe", with: @personagem.classe
    fill_in "Habilidades", with: @personagem.habilidades
    fill_in "Imagem path", with: @personagem.imagem_path
    fill_in "Nome", with: @personagem.nome
    fill_in "Raca", with: @personagem.raca
    click_on "Update Personagem"

    assert_text "Personagem was successfully updated"
    click_on "Back"
  end

  test "should destroy Personagem" do
    visit personagem_url(@personagem)
    click_on "Destroy this personagem", match: :first

    assert_text "Personagem was successfully destroyed"
  end
end
