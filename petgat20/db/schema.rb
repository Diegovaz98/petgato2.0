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

  create_table "addresses", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "cep", limit: 11, null: false
    t.string "complemento", limit: 45
    t.string "rua", limit: 45, null: false
    t.string "pais", limit: 45, null: false
    t.string "estado", limit: 45, null: false
    t.string "cidade", limit: 45, null: false
    t.string "bairro", limit: 45, null: false
  end

  create_table "adoption_histories", primary_key: ["id", "id_animal"], charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "id", null: false, auto_increment: true
    t.string "nome", limit: 45, null: false
    t.date "data", null: false
    t.string "condicao_animal", limit: 45, null: false
    t.string "descricao", limit: 45
    t.integer "id_animal", null: false
    t.index ["id_animal"], name: "fk_AdoptionHistories_Animals"
  end

  create_table "animal_types", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome", limit: 45, null: false
  end

  create_table "animals", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome", limit: 45, null: false
    t.integer "idade", null: false
    t.date "data_chegada", null: false
    t.boolean "adotado", null: false
    t.integer "id_setor", null: false
    t.string "id_pessoa", limit: 11, null: false
    t.integer "id_tipo_animal", null: false
    t.string "raca", limit: 45, null: false
    t.binary "foto"
    t.index ["id"], name: "id", unique: true
    t.index ["id_pessoa"], name: "fk_animals_people"
    t.index ["id_setor"], name: "fk_animals_sectors"
    t.index ["id_tipo_animal"], name: "fk_animals_AnimalTypes"
  end

  create_table "feed_stocks", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "quantidade", null: false
    t.string "marca", limit: 45, null: false
    t.string "nome", limit: 45, null: false
    t.integer "id_tipo_animal", null: false
    t.float "kg", null: false
    t.index ["id_tipo_animal"], name: "fk_FeedStocks_AnimalTypes"
  end

  create_table "medical_records", primary_key: ["id", "id_animal"], charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "id", null: false, auto_increment: true
    t.date "data_inicio", null: false
    t.date "data_fim"
    t.string "procedimento", limit: 45
    t.string "status", limit: 45, null: false
    t.string "remedio", limit: 45
    t.string "doenca", limit: 45
    t.string "remedio_discricao"
    t.integer "id_animal", null: false
    t.index ["id_animal"], name: "fk_MedicalRecords_Animals"
  end

  create_table "partners", primary_key: "email", id: { type: :string, limit: 45 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "telefone", limit: 11, null: false
    t.string "nome", limit: 45, null: false
    t.index ["email"], name: "email", unique: true
  end

  create_table "people", primary_key: "CPF", id: { type: :string, limit: 11 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome", limit: 45, null: false
    t.string "RG", limit: 45, null: false
    t.date "data_nasc", null: false
    t.string "genero", limit: 1
    t.integer "id_endereco", null: false
    t.string "email", limit: 45, null: false
    t.binary "foto"
    t.index ["id_endereco"], name: "fk_People_Addresses"
  end

  create_table "possible_adoptions", id: false, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "id_animal", null: false
    t.string "id_pessoa", limit: 11, null: false
    t.index ["id_animal", "id_pessoa"], name: "id_animal", unique: true
    t.index ["id_pessoa"], name: "id_pessoa"
  end

  create_table "responsibles", id: false, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "id_animal", null: false
    t.string "id_voluntario", limit: 11, null: false
    t.index ["id_animal", "id_voluntario"], name: "id_animal", unique: true
    t.index ["id_voluntario"], name: "id_voluntario"
  end

  create_table "sectors", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "numero_setor", limit: 11, null: false
    t.integer "capacidade_max", null: false
    t.integer "quantidade", null: false
  end

  create_table "vaccine_cards", id: false, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "id_animal", null: false
    t.integer "id_vacina", null: false
    t.index ["id_animal", "id_vacina"], name: "id_animal", unique: true
    t.index ["id_vacina"], name: "id_vacina"
  end

  create_table "vaccines", primary_key: ["id", "cod_vacina"], charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "id", null: false, auto_increment: true
    t.integer "quantidade", null: false
    t.string "doenca", limit: 45, null: false
    t.string "cod_vacina", limit: 45, null: false
    t.index ["cod_vacina"], name: "cod_vacina", unique: true
  end

  create_table "voluntaries", primary_key: "CPF", id: { type: :string, limit: 11 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome", limit: 45, null: false
    t.string "RG", limit: 45, null: false
    t.date "data_nasc", null: false
    t.string "genero", limit: 1
    t.integer "id_endereco", null: false
    t.string "email", limit: 45, null: false
    t.string "senha", limit: 45, null: false
    t.binary "foto"
    t.index ["CPF"], name: "CPF", unique: true
    t.index ["id_endereco"], name: "fk_Voluntaries_addresses"
  end

  add_foreign_key "adoption_histories", "animals", column: "id_animal", name: "fk_AdoptionHistories_Animals", on_delete: :cascade
  add_foreign_key "animals", "animal_types", column: "id_tipo_animal", name: "fk_animals_AnimalTypes"
  add_foreign_key "animals", "people", column: "id_pessoa", primary_key: "CPF", name: "fk_animals_people"
  add_foreign_key "animals", "sectors", column: "id_setor", name: "fk_animals_sectors"
  add_foreign_key "feed_stocks", "animal_types", column: "id_tipo_animal", name: "fk_FeedStocks_AnimalTypes"
  add_foreign_key "medical_records", "animals", column: "id_animal", name: "fk_MedicalRecords_Animals", on_delete: :cascade
  add_foreign_key "people", "addresses", column: "id_endereco", name: "fk_People_Addresses"
  add_foreign_key "possible_adoptions", "animals", column: "id_animal", name: "possible_adoptions_ibfk_1", on_delete: :cascade
  add_foreign_key "possible_adoptions", "people", column: "id_pessoa", primary_key: "CPF", name: "possible_adoptions_ibfk_2", on_delete: :cascade
  add_foreign_key "responsibles", "animals", column: "id_animal", name: "responsibles_ibfk_1", on_delete: :cascade
  add_foreign_key "responsibles", "voluntaries", column: "id_voluntario", primary_key: "CPF", name: "responsibles_ibfk_2", on_delete: :cascade
  add_foreign_key "vaccine_cards", "animals", column: "id_animal", name: "vaccine_cards_ibfk_1", on_delete: :cascade
  add_foreign_key "vaccine_cards", "vaccines", column: "id_vacina", name: "vaccine_cards_ibfk_2", on_delete: :cascade
  add_foreign_key "voluntaries", "addresses", column: "id_endereco", name: "fk_Voluntaries_addresses", on_delete: :cascade
end
