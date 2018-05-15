class User < ApplicationRecord
  has_many :orders, dependent: :destroy

  validates :name, :surname, :lib_ticket_id, presence: true
end
