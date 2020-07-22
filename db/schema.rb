# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_22_050612) do

  create_table "agentes", force: :cascade do |t|
    t.string "primerNombre"
    t.string "segundoNombre"
    t.string "primerApellido"
    t.string "nombreUds"
    t.string "modalidad"
    t.string "correo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "planeaciones", force: :cascade do |t|
    t.string "formato"
    t.string "tematica"
    t.integer "agente_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agente_id"], name: "index_planeaciones_on_agente_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "rol", default: false
    t.string "primerNombre"
    t.string "segundoNombre"
    t.string "primerApellido"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  create_table "ventas", force: :cascade do |t|
    t.integer "valor"
    t.date "fechaVenta"
    t.string "medioPago"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "agente_id", null: false
    t.index ["agente_id"], name: "index_ventas_on_agente_id"
  end

  add_foreign_key "planeaciones", "agentes"
  add_foreign_key "ventas", "agentes"
end
