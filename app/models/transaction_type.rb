class TransactionType < ApplicationRecord
  validates :description, :nature, :signal, presence: true
end
