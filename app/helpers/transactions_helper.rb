module TransactionsHelper
  def calc_balance(transactions)
    Transaction.calc_balance(transactions).to_f
  end
end
