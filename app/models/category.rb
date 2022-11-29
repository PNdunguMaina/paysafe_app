class Category < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :payments, dependent: :destroy

  validates :name, presence: true
end
