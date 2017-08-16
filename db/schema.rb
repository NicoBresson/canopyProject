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

ActiveRecord::Schema.define(version: 20170816203035) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acquisitions", force: :cascade do |t|
    t.string   "target_name"
    t.date     "acquisition_date"
    t.integer  "transaction_value"
    t.string   "transaction_currency"
    t.integer  "company_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["company_id"], name: "index_acquisitions_on_company_id", using: :btree
  end

  create_table "business_segments", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "sector_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_business_segments_on_company_id", using: :btree
    t.index ["sector_id"], name: "index_business_segments_on_sector_id", using: :btree
  end

  create_table "closed_acquisitions", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "target_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_closed_acquisitions_on_company_id", using: :btree
    t.index ["target_id"], name: "index_closed_acquisitions_on_target_id", using: :btree
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "country"
    t.date     "incorporation_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string   "name"
    t.string   "symbol"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "facts", force: :cascade do |t|
    t.string   "value"
    t.time     "time_stamp"
    t.integer  "company_id"
    t.integer  "indicator_id"
    t.integer  "period_id"
    t.integer  "source_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "currency_id"
    t.index ["company_id"], name: "index_facts_on_company_id", using: :btree
    t.index ["currency_id"], name: "index_facts_on_currency_id", using: :btree
    t.index ["indicator_id"], name: "index_facts_on_indicator_id", using: :btree
    t.index ["period_id"], name: "index_facts_on_period_id", using: :btree
    t.index ["source_id"], name: "index_facts_on_source_id", using: :btree
  end

  create_table "geographies", force: :cascade do |t|
    t.string   "name"
    t.string   "desciption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graphs", force: :cascade do |t|
    t.integer  "query_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.json     "database_criteria"
    t.index ["query_id"], name: "index_graphs_on_query_id", using: :btree
  end

  create_table "indicators", force: :cascade do |t|
    t.string   "name"
    t.string   "definition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "information_platforms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "market_areas", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "geography_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["company_id"], name: "index_market_areas_on_company_id", using: :btree
    t.index ["geography_id"], name: "index_market_areas_on_geography_id", using: :btree
  end

  create_table "periods", force: :cascade do |t|
    t.string   "type"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "queries", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "start_time"
    t.date     "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_queries_on_user_id", using: :btree
  end

  create_table "sectors", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "industry_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["industry_id"], name: "index_sectors_on_industry_id", using: :btree
  end

  create_table "sources", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "targets", force: :cascade do |t|
    t.string   "target_name"
    t.date     "acquisition_date"
    t.integer  "transaction_value"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "company_id"
    t.index ["company_id"], name: "index_targets_on_company_id", using: :btree
  end

  create_table "tickers", force: :cascade do |t|
    t.string   "value"
    t.integer  "company_id"
    t.integer  "information_platform_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["company_id"], name: "index_tickers_on_company_id", using: :btree
    t.index ["information_platform_id"], name: "index_tickers_on_information_platform_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "company_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "acquisitions", "companies"
  add_foreign_key "business_segments", "companies"
  add_foreign_key "business_segments", "sectors"
  add_foreign_key "closed_acquisitions", "companies"
  add_foreign_key "closed_acquisitions", "targets"
  add_foreign_key "facts", "companies"
  add_foreign_key "facts", "currencies"
  add_foreign_key "facts", "indicators"
  add_foreign_key "facts", "periods"
  add_foreign_key "facts", "sources"
  add_foreign_key "graphs", "queries"
  add_foreign_key "market_areas", "companies"
  add_foreign_key "market_areas", "geographies"
  add_foreign_key "queries", "users"
  add_foreign_key "sectors", "industries"
  add_foreign_key "targets", "companies"
  add_foreign_key "tickers", "companies"
  add_foreign_key "tickers", "information_platforms"
end
