require 'rails_helper'

RSpec.describe TransactionType, type: :model do
  context 'Validate TransactionType description' do
    it 'should be valid' do
      transaction_type = create(:transaction_type)

      expect(transaction_type).to be_valid
    end

    it 'should not be valid' do
      transaction_type = build(:transaction_type, :invalid_description)

      expect(transaction_type).to_not be_valid
    end
  end
  context 'Validate TransactionType nature' do
    it 'should be valid' do
      transaction_type = create(:transaction_type)

      expect(transaction_type).to be_valid
    end

    it 'should not be valid' do
      transaction_type = build(:transaction_type, :invalid_nature)

      expect(transaction_type).to_not be_valid
    end
  end
  context 'Validate TransactionType signal' do
    it 'should be valid' do
      transaction_type = create(:transaction_type)

      expect(transaction_type).to be_valid
    end

    it 'should not be valid' do
      transaction_type = build(:transaction_type, :invalid_signal)

      expect(transaction_type).to_not be_valid
    end
  end
end
