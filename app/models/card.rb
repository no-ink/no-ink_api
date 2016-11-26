class Card < ActiveRecord::Base
  validates :name, presence: true
  validates :number, format: {with: /\A[0-9０-９]+\z/}, presence: true
end
