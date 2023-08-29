class Wedding < ApplicationRecord
  has_many :spouses, dependent: :destroy
  has_many :guests, through: :spouses
  has_many :desks, dependent: :destroy
end
