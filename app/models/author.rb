class Author < ApplicationRecord
  has_many :books, dependent: :destroy

  validates :name, :surname, presence: true
end
