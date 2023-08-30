class Desk < ApplicationRecord
  belongs_to :wedding
  has_many :guest_desks
end
