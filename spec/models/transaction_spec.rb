require 'rails_helper'

RSpec.describe Transaction, type: :model do
  context 'Validate Transaction' do
    it 'should be valid' do
      transaction = create(:transaction)

      expect(transaction).to be_valid
    end
  end

  context 'Validate Transaction fields' do
    it 'transaction_type should not be valid' do
      transaction = build(:transaction, :invalid_transaction_type)

      expect(transaction).to_not be_valid
    end
    it 'date should not be valid' do
      transaction = build(:transaction, :invalid_date)

      expect(transaction).to_not be_valid
    end
    it 'value should not be valid' do
      transaction = build(:transaction, :invalid_value)

      expect(transaction).to_not be_valid
    end
    it 'cpf should not be valid' do
      transaction = build(:transaction, :invalid_cpf)

      expect(transaction).to_not be_valid
    end
    it 'card_number should not be valid' do
      transaction = build(:transaction, :invalid_card_number)

      expect(transaction).to_not be_valid
    end
    it 'time should not be valid' do
      transaction = build(:transaction, :invalid_time)

      expect(transaction).to_not be_valid
    end
    it 'store should not be valid' do
      transaction = build(:transaction, :invalid_store)

      expect(transaction).to_not be_valid
    end
  end

  context 'Validate calculation for balance' do
    it 'should be a valid number' do
      create_list(:transaction, 10, :positive)
      create_list(:transaction, 10, :negative)
      transactions = Transaction.all

      expect(Transaction.calc_balance(transactions).to_f).to be_kind_of(Float)
    end
  end
end
