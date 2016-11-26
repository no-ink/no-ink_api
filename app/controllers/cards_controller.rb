class CardsController < ApplicationController
  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to cards_path
    else
      render :new
    end
  end

  def index 
    @cards = Card.all
  end

  private
  def card_params
    params.require(:card).permit(:number, :name)
  end
end


