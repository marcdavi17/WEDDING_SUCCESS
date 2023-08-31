class Guest < ApplicationRecord
  belongs_to :family
  belongs_to :spouse, optional: true
  # belongs_to :guest_desk
  # belongs_to :desk, through: :guest_desk
  has_many :guest_desks, dependent: :destroy
  has_many :desks, through: :guest_desk

  validates :first_name, presence: true
end
