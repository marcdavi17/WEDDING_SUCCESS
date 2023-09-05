class Wedding < ApplicationRecord
  has_many :spouses, dependent: :destroy
  has_many :guests, through: :spouses
  has_many :desks, dependent: :destroy
  has_many :families, through: :guests
  has_many :guest_desks, through: :desks

  geocoded_by :city_hall
  after_validation :geocode, if: :will_save_change_to_city_hall?
end
