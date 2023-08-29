class Guest < ApplicationRecord
  belongs_to :family
  belongs_to :spouse
end
