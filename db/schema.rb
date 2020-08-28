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

ActiveRecord::Schema.define(version: 20_200_828_231_931) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'stores', force: :cascade do |t|
    t.string 'name'
    t.string 'owner'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'transaction_types', force: :cascade do |t|
    t.string 'description'
    t.string 'nature'
    t.string 'signal'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'transactions', force: :cascade do |t|
    t.bigint 'transaction_type_id', null: false
    t.date 'date'
    t.decimal 'value', precision: 10, scale: 2
    t.string 'cpf'
    t.string 'card_number'
    t.time 'time'
    t.bigint 'store_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['store_id'], name: 'index_transactions_on_store_id'
    t.index ['transaction_type_id'], name: 'index_transactions_on_transaction_type_id'
  end

  create_table 'users', force: :cascade do |t|
    t.boolean 'admin', default: true
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.string 'provider'
    t.string 'uid'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'transactions', 'stores'
  add_foreign_key 'transactions', 'transaction_types'
end
