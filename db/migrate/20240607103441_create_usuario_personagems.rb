class CreateUsuarioPersonagems < ActiveRecord::Migration[7.1]
  def change
    create_table :usuario_personagems do |t|
      t.references :user, null: false, foreign_key: true
      t.references :personagem, null: false, foreign_key: true

      t.timestamps
    end
  end
end
