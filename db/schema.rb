# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160416110154) do

  create_table "Districts", id: false, force: :cascade do |t|
    t.string "A", limit: 24
    t.string "B", limit: 8
    t.string "C", limit: 5
    t.string "D", limit: 2
  end

  create_table "additive_frequencies", force: :cascade do |t|
    t.text     "display_text",   limit: 65535
    t.integer  "data_source_id", limit: 4
    t.boolean  "status",                       default: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.text     "description",    limit: 65535
  end

  create_table "alcohol_interaction_types", force: :cascade do |t|
    t.string   "alcohol_interaction_type_name", limit: 255
    t.text     "alcohol_interaction_type_text", limit: 65535
    t.integer  "data_source_id",                limit: 4
    t.boolean  "status",                                      default: false
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
  end

  create_table "alcohol_interactions", force: :cascade do |t|
    t.integer  "generic_id",                  limit: 4
    t.integer  "alcohol_interaction_type_id", limit: 4
    t.integer  "data_source_id",              limit: 4
    t.boolean  "status",                                default: false
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "brand_names", force: :cascade do |t|
    t.string   "brand_name",     limit: 255
    t.integer  "generic_id",     limit: 4
    t.integer  "data_source_id", limit: 4
    t.boolean  "status",                     default: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "city_name",           limit: 255
    t.string   "district_code",       limit: 255
    t.string   "state_HASC_code",     limit: 255
    t.string   "country_alpha2_code", limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "combination_contents", force: :cascade do |t|
    t.integer  "combination_generic",      limit: 4
    t.integer  "generic_strength_content", limit: 4
    t.integer  "doseunit_id",              limit: 4
    t.integer  "data_source_id",           limit: 4
    t.boolean  "status",                             default: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.integer  "constituent_generic",      limit: 4
  end

  create_table "combination_package_ingredients", force: :cascade do |t|
    t.integer  "combination_package_id", limit: 4
    t.integer  "ingredient_id",          limit: 4
    t.integer  "ingredient_qty",         limit: 4
    t.integer  "doseunit_id",            limit: 4
    t.integer  "data_source_id",         limit: 4
    t.boolean  "status",                           default: false
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "combination_packages", force: :cascade do |t|
    t.integer  "brand_name_id",              limit: 4
    t.integer  "manufacturer_id",            limit: 4
    t.integer  "dispensible_combination_id", limit: 4
    t.text     "combination_text",           limit: 65535
    t.integer  "package_qty",                limit: 4
    t.integer  "package_type_id",            limit: 4
    t.string   "price",                      limit: 255
    t.string   "combination_package_text",   limit: 255
    t.integer  "data_source_id",             limit: 4
    t.boolean  "status",                                   default: false
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  create_table "contraceptive_interactions", force: :cascade do |t|
    t.integer  "generic_id",                     limit: 4
    t.text     "contraceptive_interaction_text", limit: 65535
    t.integer  "data_source_id",                 limit: 4
    t.boolean  "status",                                       default: false
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

  create_table "data_sources", force: :cascade do |t|
    t.string   "data_source_name", limit: 255
    t.boolean  "status",                       default: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "dispensible_combinations", force: :cascade do |t|
    t.string   "combination_text",             limit: 255
    t.integer  "generic_id",                   limit: 4
    t.integer  "doseform_id",                  limit: 4
    t.integer  "route_id",                     limit: 4
    t.string   "dispensible_combination_text", limit: 255
    t.integer  "data_source_id",               limit: 4
    t.boolean  "status",                                   default: false
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  create_table "dispensible_generics", force: :cascade do |t|
    t.integer  "generic_id",               limit: 4
    t.integer  "route_id",                 limit: 4
    t.integer  "doseform_id",              limit: 4
    t.integer  "generic_strength",         limit: 4
    t.integer  "doseunit_id",              limit: 4
    t.integer  "dispensible_qty",          limit: 4
    t.text     "dispensible_generic_text", limit: 65535
    t.integer  "data_source_id",           limit: 4
    t.boolean  "status",                                 default: false
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
  end

  create_table "dose_forms", force: :cascade do |t|
    t.string   "doseform_name",  limit: 255
    t.string   "doseform_abbr",  limit: 255
    t.integer  "data_source_id", limit: 4
    t.boolean  "status"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "dose_periods", force: :cascade do |t|
    t.string   "dose_period_name", limit: 255
    t.string   "dose_period_abbr", limit: 255
    t.integer  "data_source_id",   limit: 4
    t.boolean  "status",                       default: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "doseform_doseunits", force: :cascade do |t|
    t.integer  "doseform_id", limit: 4
    t.integer  "doseunit_id", limit: 4
    t.boolean  "is_default"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "doseunits", force: :cascade do |t|
    t.string   "doseunit_name",  limit: 255
    t.string   "doseunit_abbr",  limit: 255
    t.integer  "data_source_id", limit: 4
    t.boolean  "status",                     default: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "drug_interactions", force: :cascade do |t|
    t.integer  "first_generic_id",      limit: 4
    t.text     "drug_interaction_text", limit: 65535
    t.integer  "data_source_id",        limit: 4
    t.boolean  "status",                              default: false
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.integer  "second_generic_id",     limit: 4
  end

  create_table "food_intakes", force: :cascade do |t|
    t.boolean  "status",                         default: false
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.text     "food_intake_name", limit: 65535
  end

  create_table "generic_monographs", force: :cascade do |t|
    t.integer  "generic_id",                 limit: 4
    t.text     "dose_monograph",             limit: 65535
    t.text     "contraindication_monograph", limit: 65535
    t.text     "precaution_monograph",       limit: 65535
    t.text     "adverseeffect_monograph",    limit: 65535
    t.text     "storage_monograph",          limit: 65535
    t.integer  "data_source_id",             limit: 4
    t.boolean  "status",                                   default: false
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  create_table "generic_package_ingredients", force: :cascade do |t|
    t.integer  "generic_package_id", limit: 4
    t.integer  "ingredient_id",      limit: 4
    t.integer  "ingredient_qty",     limit: 4
    t.integer  "doseunit_id",        limit: 4
    t.integer  "data_source_id",     limit: 4
    t.boolean  "status",                       default: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "generic_packages", force: :cascade do |t|
    t.integer  "brand_name_id",          limit: 4
    t.integer  "manufacturer_id",        limit: 4
    t.integer  "dispensible_generic_id", limit: 4
    t.integer  "package_qty",            limit: 4
    t.integer  "package_type_id",        limit: 4
    t.string   "price",                  limit: 255
    t.text     "generic_package_text",   limit: 65535
    t.integer  "data_source_id",         limit: 4
    t.boolean  "status",                               default: false
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
  end

  create_table "generic_types", force: :cascade do |t|
    t.string   "generic_type_name", limit: 255
    t.integer  "data_source_id",    limit: 4
    t.boolean  "status",                        default: false
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  create_table "generics", force: :cascade do |t|
    t.string   "generic_name",     limit: 255
    t.boolean  "is_essential",                 default: false
    t.integer  "generic_type_id",  limit: 4
    t.integer  "schedule_id",      limit: 4
    t.integer  "preg_category_id", limit: 4
    t.integer  "food_intake_id",   limit: 4
    t.integer  "rxcui",            limit: 4
    t.integer  "data_source_id",   limit: 4
    t.boolean  "status",                       default: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.boolean  "is_combination",               default: false
  end

  create_table "hepatic_impairments", force: :cascade do |t|
    t.integer  "generic_id",               limit: 4
    t.text     "hepatic_imp_instructions", limit: 65535
    t.text     "hepatic_imp_text",         limit: 65535
    t.integer  "data_source_id",           limit: 4
    t.boolean  "status",                                 default: false
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
  end

  create_table "indication_generic_maps", force: :cascade do |t|
    t.integer  "indication_id",  limit: 4
    t.integer  "generic_id",     limit: 4
    t.integer  "data_source_id", limit: 4
    t.boolean  "status",                   default: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "indications", force: :cascade do |t|
    t.string   "indication_name", limit: 255
    t.integer  "data_source_id",  limit: 4
    t.boolean  "status",                      default: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "ingredient_name", limit: 255
    t.integer  "data_source_id",  limit: 4
    t.boolean  "status",                      default: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "lactations", force: :cascade do |t|
    t.integer  "generic_id",     limit: 4
    t.string   "lactation_text", limit: 255
    t.integer  "data_source_id", limit: 4
    t.boolean  "status",                     default: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.text     "manufacturer_name", limit: 65535
    t.string   "manufacturer_abbr", limit: 255
    t.text     "address1",          limit: 65535
    t.text     "address2",          limit: 65535
    t.string   "city_id",           limit: 255
    t.integer  "state_id",          limit: 4
    t.string   "pin",               limit: 255
    t.string   "phone",             limit: 255
    t.string   "phone2",            limit: 255
    t.string   "fax",               limit: 255
    t.string   "email",             limit: 255
    t.string   "website",           limit: 255
    t.string   "mobilephone",       limit: 255
    t.integer  "data_source_id",    limit: 4
    t.boolean  "status",                          default: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  create_table "nfi_pregnancy_categories", force: :cascade do |t|
    t.string   "preg_category_name",        limit: 255
    t.string   "preg_category_description", limit: 255
    t.integer  "data_source_id",            limit: 4
    t.boolean  "status",                                default: false
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "nfi_schedules", force: :cascade do |t|
    t.string   "schedule_name",  limit: 255
    t.text     "description",    limit: 65535
    t.integer  "data_source_id", limit: 4
    t.boolean  "status",                       default: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "nfi_sub_systems", force: :cascade do |t|
    t.text     "sub_system_description", limit: 65535
    t.integer  "data_source_id",         limit: 4
    t.integer  "system_id",              limit: 4
    t.boolean  "status",                               default: false
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
  end

  create_table "nfi_systems", force: :cascade do |t|
    t.string   "system_name",       limit: 255
    t.text     "sysem_description", limit: 65535
    t.integer  "data_source_id",    limit: 4
    t.boolean  "sub_system_exist",                default: false
    t.boolean  "status",                          default: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  create_table "package_types", force: :cascade do |t|
    t.string   "package_type_name", limit: 255
    t.integer  "data_source_id",    limit: 4
    t.boolean  "status",                        default: false
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string   "route_name",        limit: 255
    t.string   "route_abbr",        limit: 255
    t.text     "route_description", limit: 65535
    t.integer  "data_source_id",    limit: 4
    t.boolean  "status",                          default: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "state_name",          limit: 255
    t.string   "state_HASC_code",     limit: 255
    t.string   "country_alpha2_code", limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "user_role",              limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
