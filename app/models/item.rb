class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  enum category: { instruments: 0, clothes: 1, other: 2 }
end
