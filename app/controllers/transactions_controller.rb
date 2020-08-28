class TransactionsController < ApplicationController
  def index
    @q = Negotiation.includes(:payment, :store).ransack(params[:q])
    @negotiations = @q.result
  end
end
