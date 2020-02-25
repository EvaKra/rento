class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item
  validates :date_from, presence: true
  validates :date_to, presence: true
end
