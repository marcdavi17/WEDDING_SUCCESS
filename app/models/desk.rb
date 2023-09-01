class Desk < ApplicationRecord
  belongs_to :wedding
  has_many :guest_desks
  has_many :guests, through: :guest_desks
end
