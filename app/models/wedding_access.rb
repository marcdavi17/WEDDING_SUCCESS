class WeddingAccess < ApplicationRecord
  belongs_to :user
  belongs_to :wedding
end
