class Transaction < ActiveRecord::Base
  belongs_to :card

  validates :company, :sum, presence: true

  mount_uploader :receipt, ReceiptUploader

  def self.advanced_search(params)
    if params[:card_id]
      Card.find(params[:card_id]).where("company=?", params[:company])
    else 
      where()
    end
  end

end
