class ShoppingCenter < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    validates :address, allow_blank: true, length: { maximum: 50 }
    validates :parking_area, allow_blank: true, length: { maximum: 50 }
    
    
    has_many :shops
end
