class WeddingAccess < ApplicationRecord
  belongs_to :user
  belongs_to :wedding
  #validates :category, inclusion: { in: CATEGORIES }
end
