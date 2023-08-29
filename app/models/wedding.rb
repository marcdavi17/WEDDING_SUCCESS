class Wedding < ApplicationRecord
  has_many: :wedding_accesses, :desks, :spouses
  
end
