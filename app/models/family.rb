class Family < ApplicationRecord
  include Abyme::Model

  has_many :guests, dependent: :destroy
  abymize :guests, permit: :all_attributes

  validates :name, presence: true

  def family?
    guests.map(&:last_name).uniq.compact.count == 1
  end
end
