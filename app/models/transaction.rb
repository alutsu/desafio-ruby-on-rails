class Transaction < ApplicationRecord
  belongs_to :transaction_type
  belongs_to :store

  validates :date, :value, :cpf, :card_number, :time, presence: true

  def self.calc_balance(transactions)
    transactions
      .where(transaction_types: { signal: '+' })
      .sum(:value) -
      transactions
      .where(transaction_types: { signal: '-' })
      .sum(:value)
  end
end
