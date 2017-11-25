class Librarian < ApplicationRecord
  has_many :orders

  validates :name, :surname, :passport_code, presence: true
end
