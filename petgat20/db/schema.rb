# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "Animais", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome", limit: 45, null: false
    t.integer "idade", null: false
    t.date "data_chegada", null: false
    t.boolean "adotado", null: false
    t.integer "id_setor", null: false
    t.string "id_pessoa", limit: 11, null: false
    t.integer "id_tipo_animal", null: false
    t.string "raca", limit: 45, null: false
    t.index ["id"], name: "id", unique: true
    t.index ["id_pessoa"], name: "fk_Animais_Pessoas"
    t.index ["id_setor"], name: "fk_Animais_Setores"
    t.index ["id_tipo_animal"], name: "fk_Animais_TiposAnimais"
  end

  create_table "Enderecos", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "cep", limit: 11, null: false
    t.string "complemento", limit: 45
    t.string "rua", limit: 45, null: false
    t.string "pais", limit: 45, null: false
    t.string "estado", limit: 45, null: false
    t.string "cidade", limit: 45, null: false
    t.string "bairro", limit: 45, null: false
  end

  create_table "Estoque_Farmacinha", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome", limit: 45, null: false
    t.date "validade", null: false
    t.integer "quantidade", null: false
    t.string "doenca", limit: 45, null: false
  end

  create_table "Estoque_Racoes", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "quantidade", null: false
    t.string "marca", limit: 45, null: false
    t.string "nome", limit: 45, null: false
    t.integer "id_tipo_animal", null: false
    t.float "kg", null: false
    t.index ["id_tipo_animal"], name: "fk_EstoqueRacoes_TipoAnimais"
  end

  create_table "Ficha_Medica", primary_key: ["id", "id_animal"], charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "id", null: false, auto_increment: true
    t.date "data_inicio", null: false
    t.date "data_fim"
    t.string "procedimento", limit: 45
    t.string "status", limit: 45, null: false
    t.string "remedio", limit: 45
    t.string "doenca", limit: 45
    t.string "remedio_discricao"
    t.integer "id_animal", null: false
    t.index ["id_animal"], name: "fk_FichaMedica_Animal"
  end

  create_table "Historico_Adocoes", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome", limit: 45, null: false
    t.date "data", null: false
    t.string "condicao_animal", limit: 45, null: false
    t.string "descricao", limit: 45
    t.integer "id_animal", null: false
    t.index ["id_animal"], name: "fk_HistoricoAdocoes_Animais"
  end

  create_table "Parceiros", primary_key: "email", id: { type: :string, limit: 45 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "telefone", limit: 11, null: false
    t.string "nome", limit: 45, null: false
    t.index ["email"], name: "email", unique: true
  end

  create_table "Pessoas", primary_key: "CPF", id: { type: :string, limit: 11 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome", limit: 45, null: false
    t.string "RG", limit: 45, null: false
    t.date "data_nasc", null: false
    t.string "genero", limit: 1
    t.integer "id_endereco", null: false
    t.index ["id_endereco"], name: "fk_Pessoa_Endereco"
  end

  create_table "Possiveis_Adocoes", id: false, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "id_animal", null: false
    t.string "id_pessoa", limit: 11, null: false
    t.index ["id_animal", "id_pessoa"], name: "id_animal", unique: true
    t.index ["id_pessoa"], name: "id_pessoa"
  end

  create_table "Responsaveis", id: false, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "id_animal", null: false
    t.string "id_voluntario", limit: 11, null: false
    t.index ["id_animal", "id_voluntario"], name: "id_animal", unique: true
    t.index ["id_voluntario"], name: "id_voluntario"
  end

  create_table "Setores", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "numero_setor", limit: 11, null: false
    t.integer "capacidade_max", null: false
    t.integer "quantidade", null: false
  end

  create_table "Tipos_de_Animais", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome", limit: 45, null: false
  end

  create_table "Vacinas", primary_key: ["id", "cod_vacina"], charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "id", null: false, auto_increment: true
    t.integer "quantidade", null: false
    t.string "doenca", limit: 45, null: false
    t.string "cod_vacina", limit: 45, null: false
    t.index ["cod_vacina"], name: "cod_vacina", unique: true
  end

  create_table "Voluntarios", primary_key: "CPF", id: { type: :string, limit: 11 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome", limit: 45, null: false
    t.string "RG", limit: 45, null: false
    t.date "data_nasc", null: false
    t.string "genero", limit: 1
    t.integer "id_endereco", null: false
    t.index ["CPF"], name: "CPF", unique: true
    t.index ["id_endereco"], name: "fk_Vonluntarios_Enderecos"
  end

  create_table "cartoes_de_vacina", id: false, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "id_animal", null: false
    t.integer "id_vacina", null: false
    t.index ["id_animal", "id_vacina"], name: "id_animal", unique: true
    t.index ["id_vacina"], name: "id_vacina"
  end

  add_foreign_key "Animais", "Pessoas", column: "id_pessoa", primary_key: "CPF", name: "fk_Animais_Pessoas"
  add_foreign_key "Animais", "Setores", column: "id_setor", name: "fk_Animais_Setores"
  add_foreign_key "Animais", "Tipos_de_Animais", column: "id_tipo_animal", name: "fk_Animais_TiposAnimais"
  add_foreign_key "Estoque_Racoes", "Tipos_de_Animais", column: "id_tipo_animal", name: "fk_EstoqueRacoes_TipoAnimais"
  add_foreign_key "Ficha_Medica", "Animais", column: "id_animal", name: "fk_FichaMedica_Animal", on_delete: :cascade
  add_foreign_key "Historico_Adocoes", "Animais", column: "id_animal", name: "fk_HistoricoAdocoes_Animais", on_delete: :cascade
  add_foreign_key "Pessoas", "Enderecos", column: "id_endereco", name: "fk_Pessoa_Endereco"
  add_foreign_key "Possiveis_Adocoes", "Animais", column: "id_animal", name: "Possiveis_Adocoes_ibfk_1", on_delete: :cascade
  add_foreign_key "Possiveis_Adocoes", "Pessoas", column: "id_pessoa", primary_key: "CPF", name: "Possiveis_Adocoes_ibfk_2", on_delete: :cascade
  add_foreign_key "Responsaveis", "Animais", column: "id_animal", name: "Responsaveis_ibfk_1", on_delete: :cascade
  add_foreign_key "Responsaveis", "Voluntarios", column: "id_voluntario", primary_key: "CPF", name: "Responsaveis_ibfk_2", on_delete: :cascade
  add_foreign_key "Voluntarios", "Enderecos", column: "id_endereco", name: "fk_Vonluntarios_Enderecos", on_delete: :cascade
  add_foreign_key "cartoes_de_vacina", "Animais", column: "id_animal", name: "cartoes_de_vacina_ibfk_1", on_delete: :cascade
  add_foreign_key "cartoes_de_vacina", "Vacinas", column: "id_vacina", name: "cartoes_de_vacina_ibfk_2", on_delete: :cascade
end
