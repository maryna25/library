class Order < ApplicationRecord
  has_and_belongs_to_many :books
  has_and_belongs_to_many :magazines
  belongs_to :user
  belongs_to :librarian

  validates :order_date, presence: true

  accepts_nested_attributes_for :books
end
