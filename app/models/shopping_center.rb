class ShoppingCenter < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    validates :address, allow_blank: true, length: { maximum: 50 }
    validates :parking_area, allow_blank: true, length: { maximum: 50 }
    
    
    has_many :shops
    
    def self.search(search)
        if search != ""
            ShoppingCenter.where(['title LIKE(?) OR explanation LIKE(?) OR animal_name LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%"])
        else
            ShoppingCenter.includes(:user).order('created_at DESC')
        end
    end
end
