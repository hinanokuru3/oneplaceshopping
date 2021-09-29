class ShoppingCenter < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    validates :address, allow_blank: true, length: { maximum: 50 }
    validates :parking_area, allow_blank: true, length: { maximum: 50 }
    
    
    has_many :shops
    
    scope :search_by_keywords, -> (keywords) {
        keywords.map {|keyword| joins(:shops).where(shops: {name: keyword}) }.inject(:&)
    }
    
    
    has_many :histories, dependent: :destroy
    
   
    def left_history(current_user)
        histories.create(user_id: current_user.id)
    end
end
