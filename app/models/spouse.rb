class Spouse < ApplicationRecord
  belongs_to :wedding
  has_many :guests, dependent: :destroy

  def fullname
    "#{first_name} #{last_name}"
  end
end
