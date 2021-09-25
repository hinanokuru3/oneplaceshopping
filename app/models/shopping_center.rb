class ShoppingCenter < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    validates :address, allow_blank: true, length: { maximum: 50 }
    validates :parking_area, allow_blank: true, length: { maximum: 50 }
    
    
    has_many :shops
    
    scope :search_by_keywords, -> (keywords) {
        keywords.map {|keyword| joins(:shops).where(shops: {name: keyword}) }.inject(:&)
    }
    
    has_many :users
    has_many :histories
    
    def browsing_history(user)
        new_history = histories.new
        new_history.user_id = user.id
    # 同じ投稿をcurrent_userが閲覧している場合、古い履歴を削除
        if user.histories.exists?(shopping_center_id: id)
            visited_history = user.histories.find_by(shopping_center_id: id)
            visited_history.destroy
        end
        new_history.save
    end
