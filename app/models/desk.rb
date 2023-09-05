class Desk < ApplicationRecord
  belongs_to :wedding
  has_many :guest_desks
  has_many :guests, through: :guest_desks

  def taken_seats
    guests.count
  end

  def remaining_seats
    capacity - taken_seats
  end

  def status
    capacity == guests.count ? "COMPLETE" : "PENDING"
  end
end
