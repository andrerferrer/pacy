class Basket < ApplicationRecord
  belongs_to :user
  belongs_to :table
  has_many :basket_meals, dependent: :destroy
  attribute :status, :string, default: 'Pending'
  STATUSES = ["Pending", "Confirmed"]
  validates :status, presence: true
  validates :status, inclusion: { in: STATUSES }
end
