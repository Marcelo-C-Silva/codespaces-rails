class UsuarioPersonagem < ApplicationRecord
  belongs_to :user
  belongs_to :personagem
end
