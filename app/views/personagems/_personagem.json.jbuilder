json.extract! personagem, :id, :nome, :raca, :classe, :atributos, :habilidades, :imagem_path, :created_at, :updated_at
json.url personagem_url(personagem, format: :json)
