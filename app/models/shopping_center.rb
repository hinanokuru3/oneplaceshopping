class ShoppingCenter < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    validates :address, allow_blank: true, length: { maximum: 50 }
    validates :parking_area, allow_blank: true, length: { maximum: 50 }
    
    
    has_many :shops
    
    scope :search_by_keywords, -> (keywords) {
        keywords.map {|keyword| joins(:shops).where(shops: {name: keyword}) }.inject(:&)
    }
    
    
    has_many :histories, dependent: :destroy
    
    #def shopping_center_history(user)#閲覧履歴
    
        
      
        #new_history = current_user.histories.new
        #new_history.user_id = current_user.id
    
        #new_history.save
     
    
    #end
    
end
