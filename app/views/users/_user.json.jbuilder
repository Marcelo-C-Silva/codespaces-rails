json.extract! user, :id, :nome, :email, :senha_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
