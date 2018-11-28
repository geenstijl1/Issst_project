# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_28_041706) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data", force: :cascade do |t|
    t.integer "turno"
    t.integer "numero_oficio"
    t.date "fecha_oficio"
    t.date "fecha_recepcion"
    t.string "nombre_promovente"
    t.string "numero_juicio"
    t.string "turnado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "numero_correspondencia"
    t.integer "numero_pension"
    t.string "sala"
    t.string "tipo_expediente"
    t.string "numero_expediente"
    t.string "estado_expediente"
    t.text "observaciones"
    t.string "letra"
    t.date "termino"
    t.date "envio_juridico"
    t.float "monto_cheque"
    t.float "ajuste_cuota"
    t.string "documento_file_name"
    t.string "documento_content_type"
    t.bigint "documento_file_size"
    t.datetime "documento_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
