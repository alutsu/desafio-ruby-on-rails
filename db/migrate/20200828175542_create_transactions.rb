class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :transaction_type, null: false, foreign_key: true
      t.date :date
      t.decimal :value
      t.string :cpf
      t.string :card_number
      t.time :time
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
