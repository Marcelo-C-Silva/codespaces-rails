json.extract! usuario_personagem, :id, :user_id, :personagem_id, :created_at, :updated_at
json.url usuario_personagem_url(usuario_personagem, format: :json)
