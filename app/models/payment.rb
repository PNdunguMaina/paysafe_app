class Payment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :categories, dependent: :destroy

  validates :name, presence: true
  validates :amount, numericality: true, comparison: { greater_than: 0 }
  validates :category_id, presence: true
end
