class Guest < ApplicationRecord
  belongs_to :family
  belongs_to :spouse
  has_many :guest_desks, dependent: :destroy
  # belongs_to :desk, through: :guest_desk
end
