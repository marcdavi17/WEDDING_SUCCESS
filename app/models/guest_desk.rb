class GuestDesk < ApplicationRecord
  belongs_to :desk
  belongs_to :guest
end
