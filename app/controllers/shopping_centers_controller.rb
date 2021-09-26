class ShoppingCentersController < ApplicationController
  #def index
    #@shopping_centers=ShoppingCenter.all

  def show
    @shopping_center=ShoppingCenter.find(params[:id])
     
    new_history = @shopping_center.histories.new
    new_history.user_id = current_user.id
    new_history.save
    
    histories_stock_limit = 10
    histories = current_user.histories.all
    if histories.count > histories_stock_limit
      histories[0].destroy
    end
     
  end
  
  def shopping_center_history#閲覧履歴
    @history = History.all
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

  def logged_in?
    !!current_user
  end
  
 
end
