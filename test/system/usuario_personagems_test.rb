require "application_system_test_case"

class UsuarioPersonagemsTest < ApplicationSystemTestCase
  setup do
    @usuario_personagem = usuario_personagems(:one)
  end

  test "visiting the index" do
    visit usuario_personagems_url
    assert_selector "h1", text: "Usuario personagems"
  end

  test "should create usuario personagem" do
    visit usuario_personagems_url
    click_on "New usuario personagem"

    fill_in "Personagem", with: @usuario_personagem.personagem_id
    fill_in "User", with: @usuario_personagem.user_id
    click_on "Create Usuario personagem"

    assert_text "Usuario personagem was successfully created"
    click_on "Back"
  end

  test "should update Usuario personagem" do
    visit usuario_personagem_url(@usuario_personagem)
    click_on "Edit this usuario personagem", match: :first

    fill_in "Personagem", with: @usuario_personagem.personagem_id
    fill_in "User", with: @usuario_personagem.user_id
    click_on "Update Usuario personagem"

    assert_text "Usuario personagem was successfully updated"
    click_on "Back"
  end

  test "should destroy Usuario personagem" do
    visit usuario_personagem_url(@usuario_personagem)
    click_on "Destroy this usuario personagem", match: :first

    assert_text "Usuario personagem was successfully destroyed"
  end
end
