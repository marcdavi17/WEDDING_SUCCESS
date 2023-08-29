class Desk < ApplicationRecord
  belongs_to :wedding
  has many :guest_desks
end
