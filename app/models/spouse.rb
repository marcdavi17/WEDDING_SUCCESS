class Spouse < ApplicationRecord
  belongs_to :wedding
  has_many :guests, dependent: :destroy
end
