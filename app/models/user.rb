class User < ApplicationRecord
  has_many :orders

  validates :name, :surname, :lib_ticket_id, presence: true
end
