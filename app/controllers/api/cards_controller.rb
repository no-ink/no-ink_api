class Api::CardsController < Api::ApiController
  respond_to :json
  def index
    @cards = Card.all
    respond_with(@cards)
  end
end
