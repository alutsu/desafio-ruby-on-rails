require 'rails_helper'
require_relative '../support/devise'

RSpec.describe TransactionsHelper, type: :helper do
  context 'Validate helper' do
    it 'should return a float' do
      create_list(:transaction, 10, :positive)
      create_list(:transaction, 10, :negative)
      transactions = Transaction.all

      expect(helper.calc_balance(transactions)).to be_kind_of(Float)
    end
  end
end
