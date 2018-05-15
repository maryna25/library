class Librarian < ApplicationRecord
  has_many :orders, dependent: :destroy

  validates :name, :surname, :passport_code, presence: true
end
