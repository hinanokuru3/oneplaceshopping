class ShoppingCentersController < ApplicationController
  #def index
    #@shopping_centers=ShoppingCenter.all

  def show
    @shopping_center=ShoppingCenter.find(params[:id])
  end
  
  def browsing_history(user)
    if logged_in?
      new_history = histories.new
      new_history.user_id = user.id
      # 同じ投稿をcurrent_userが閲覧している場合、古い履歴を削除
      if user.histories.exists?(shopping_center_id: id)
        visited_history = user.histories.find_by(shopping_center_id: id)
        visited_history.destroy
      end
      new_history.save
    end
  end
  
  def shopping_center_history #閲覧履歴
    @history = BrowsingHistory.all
  end
  
  def search
    @shopping_center=ShoppingCenter.search_by_keywords(search_keywords)
  end

  private
  
  def search_keywords
    [params[:name1], params[:name2], params[:name3]].reject(&:blank?)
    
  end
  
 
end
