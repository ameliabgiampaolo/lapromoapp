class HistYumi < ApplicationRecord
  belongs_to :diner
  has_one :invitation
  has_one :reservation
end
