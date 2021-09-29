class ShoppingCentersController < ApplicationController
  before_action :require_user_logged_in, only: [:shopping_center_history]
  

  def show
    @shopping_center=ShoppingCenter.find(params[:id])
    if logged_in?
      @shopping_center.left_history(current_user)
    end
     
  end
  
  def shopping_center_history#閲覧履歴
    @history = current_user.histories.order(created_at: :desc).limit(10)
    
  end
   
    
  
  def search
    @shopping_center=ShoppingCenter.search_by_keywords(search_keywords)
  end

  private
  
  def search_keywords
    [params[:name1], params[:name2], params[:name3]].reject(&:blank?)
    
  end
 
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  
  def require_user_logged_in
    unless logged_in?
      redirect_to "/shopping_centers/search"
    end
  end
end
