class Payment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :category_payments, dependent: :destroy
  has_many :categories, through: :category_payments

  validates :name, presence: true
  validates :amount, numericality: true, comparison: { greater_than: 0 }
  validates :category_payments, presence: true
end
