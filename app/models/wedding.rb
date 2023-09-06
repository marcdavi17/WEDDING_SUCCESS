class Wedding < ApplicationRecord
  has_many :spouses, dependent: :destroy
  has_many :guests, through: :spouses
  has_many :desks, dependent: :destroy
  has_many :families, through: :guests
  has_many :guest_desks, through: :desks

  geocoded_by :city_hall
  after_validation :geocode, if: :will_save_change_to_city_hall?

  def countdown_date
    # Jan 5, 2024 15:37:25
    # debugger
    year, month, day_num = day.to_s.split('-')
    "#{Date::MONTHNAMES[month.to_i].first(3).capitalize} #{day_num}, #{year} 00:00:00"

  def not_affected_guests
    assigned_guests = guests.select do |guest|
      !guest.guest_desks.empty?
    end
    guests - assigned_guests
  end
end
