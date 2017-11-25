class Author < ApplicationRecord
  has_many :books

  validates :name, :surname, presence: true
end
