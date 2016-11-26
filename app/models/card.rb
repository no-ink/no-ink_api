class Card < ActiveRecord::Base
  has_many :transactions
  
  validates :name, presence: true
  validates :number, format: {with: /\A[0-9０-９]+\z/}, presence: true
end
