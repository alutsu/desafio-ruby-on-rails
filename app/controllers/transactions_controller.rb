class TransactionsController < ApplicationController
  def index
    @q = Transaction.includes(:transaction_type, :store).ransack(params[:q])
    @transactions = @q.result.page(params[:page])
  end
end
