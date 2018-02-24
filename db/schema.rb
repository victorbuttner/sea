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

ActiveRecord::Schema.define(version: 20180222020928) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "cpf_cnpj"
    t.string "rg"
    t.date "birth_date"
    t.string "name"
    t.string "sex"
    t.string "ocupation"
    t.string "civil_status"
    t.string "postal"
    t.string "street"
    t.integer "addr_number"
    t.string "street_opt"
    t.string "district"
    t.string "state"
    t.string "city"
    t.string "phone1"
    t.string "phone2"
    t.string "email"
    t.boolean "status"
    t.string "obs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.integer "quantity"
    t.decimal "unitary_price", precision: 12, scale: 3
    t.decimal "total_price", precision: 12, scale: 3
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "client_id"
    t.integer "product_id"
    t.string "status"
    t.float "sub_total", limit: 24
    t.float "price_total", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_status_id"
  end

  create_table "payments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "order_id"
    t.string "payment_type"
    t.float "price", limit: 24
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "cod_prod"
    t.string "name"
    t.string "category_id"
    t.float "buy_price", limit: 24
    t.float "sell_price", limit: 24
    t.integer "amount"
    t.string "status"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "supplier_id"
  end

  create_table "recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.float "longe_dir_esferico", limit: 24
    t.float "longe_dir_adicao", limit: 24
    t.float "longe_dir_cilindrico", limit: 24
    t.float "longe_dir_eixo", limit: 24
    t.float "longe_esq_esferico", limit: 24
    t.float "longe_esq_cilindrico", limit: 24
    t.float "longe_esq_adicao", limit: 24
    t.float "longe_esq_eixo", limit: 24
    t.float "longe_dp", limit: 24
    t.float "perto_dir_esferico", limit: 24
    t.float "perto_dir_adicao", limit: 24
    t.float "perto_dir_cilindrico", limit: 24
    t.float "perto_dir_eixo", limit: 24
    t.float "perto_esq_esferico", limit: 24
    t.float "perto_esq_cilindrico", limit: 24
    t.float "perto_esq_adicao", limit: 24
    t.float "perto_esq_eixo", limit: 24
    t.float "perto_dp", limit: 24
    t.integer "client_id"
    t.string "doctor_name"
    t.string "doctor_crm"
    t.string "doctor_phone"
    t.float "dp_ponte", limit: 24
    t.float "diagonal_maior", limit: 24
    t.string "material"
    t.float "valor", limit: 24
    t.float "sinal", limit: 24
    t.date "entrega"
    t.string "tipo"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "company_id"
    t.string "cpf_cnpj"
    t.string "name"
    t.string "end"
    t.string "phone"
    t.string "email"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.boolean "superadmin_role"
    t.boolean "supervisor_role"
    t.boolean "user_role"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
