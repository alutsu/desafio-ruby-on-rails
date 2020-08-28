class TransactionType < ApplicationRecord
  validates :description, :nature, :signal, presence: true

  has_many :transactions, dependent: :restrict_with_exception
end
