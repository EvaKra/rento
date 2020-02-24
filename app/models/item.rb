class Item < ApplicationRecord
  belongs_to :user
  enum category: { instruments: 0, clothes: 1, other: 2 }
end
