class Category < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :payments, through: :category_payment

  validates :name, presence: true
  validates :icon, presence: true

  def count_total_payments
    total = 0
    payments.each do |p|
      total += p.amount
    end
    total
  end
end
