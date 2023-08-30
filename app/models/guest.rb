class Guest < ApplicationRecord
  belongs_to :family
  belongs_to :spouse
  # belongs_to :guest_desk
  # belongs_to :desk, through: :guest_desk
  has_many :guest_desks, dependent: :destroy
  has_many :desk, through: :guest_desks
end
