class Transaction < ApplicationRecord
  belongs_to :transaction_type
  belongs_to :store

  validates :date, :value, :cpf, :card_number, :time, presence: true
end
