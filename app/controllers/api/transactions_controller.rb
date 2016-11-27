class Api::TransactionsController <  Api::ApiController
  respond_to :json
  before_action :set_card
  

  def index
    @transactions = @card.transactions 
    respond_with(@transactions)
  end

  def show
    @transaction = Transaction.find(params[:id])
    respond_with(@transaction)
  end

  def search 
    Transaction.advanced_search(params)
  end

  private
  def set_card
    @card = Card.find(params[:card_id])
  end
end

