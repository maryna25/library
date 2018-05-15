class Book < ApplicationRecord
  belongs_to :author
  has_and_belongs_to_many :orders, dependent: :destroy

  validates :name, presence: true
end
