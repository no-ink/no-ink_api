class Api::TransactionsController < ApplicationController
  respond_to :json
  before_action :set_card
  

  def index
    @transactions = @card.transactions 
    respond_with(@transactions)
  end

  private
  def set_card
    @card = Card.find(params[:card_id])
  end
end

