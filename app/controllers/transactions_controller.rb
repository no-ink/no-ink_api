class TransactionsController < ApplicationController
  before_action :set_card
  
  def new
    @transaction = @card.transactions.new   
  end

  def create
    @card.transactions.new(transaction_params)
    if @card.save
      redirect_to cards_path
    else
      render :new
    end
  end

  private
  def transaction_params
    params.require(:transaction).permit(:company, :sum, :receipt)
  end

  def set_card
    @card = Card.find(params[:card_id])
  end
end
