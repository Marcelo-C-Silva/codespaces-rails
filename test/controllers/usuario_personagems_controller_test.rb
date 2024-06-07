require "test_helper"

class UsuarioPersonagemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_personagem = usuario_personagems(:one)
  end

  test "should get index" do
    get usuario_personagems_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_personagem_url
    assert_response :success
  end

  test "should create usuario_personagem" do
    assert_difference("UsuarioPersonagem.count") do
      post usuario_personagems_url, params: { usuario_personagem: { personagem_id: @usuario_personagem.personagem_id, user_id: @usuario_personagem.user_id } }
    end

    assert_redirected_to usuario_personagem_url(UsuarioPersonagem.last)
  end

  test "should show usuario_personagem" do
    get usuario_personagem_url(@usuario_personagem)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_personagem_url(@usuario_personagem)
    assert_response :success
  end

  test "should update usuario_personagem" do
    patch usuario_personagem_url(@usuario_personagem), params: { usuario_personagem: { personagem_id: @usuario_personagem.personagem_id, user_id: @usuario_personagem.user_id } }
    assert_redirected_to usuario_personagem_url(@usuario_personagem)
  end

  test "should destroy usuario_personagem" do
    assert_difference("UsuarioPersonagem.count", -1) do
      delete usuario_personagem_url(@usuario_personagem)
    end

    assert_redirected_to usuario_personagems_url
  end
end
