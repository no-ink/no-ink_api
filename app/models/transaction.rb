class Transaction < ActiveRecord::Base
  belongs_to :card

  validates :company, :sum, presence: true
end
