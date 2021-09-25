class ShoppingCentersController < ApplicationController
  #def index
    #@shopping_centers=ShoppingCenter.all

  def show
    @shopping_center=ShoppingCenter.find(params[:id])
    new_history=@shopping_center.histories.new
    new_history.user.id=current_user.id
    if current_user.histories.exists?(shopping_center_id: "#{params[:id]}")
      old_history = current_user.histories.find_by(shopping_center_id: "#{params[:id]}")
      old_history.destroy
    end
    
    new_history.save
  end
  
  def search
    @shopping_center=ShoppingCenter.search_by_keywords(search_keywords)
  end

  private
  
  def search_keywords
    [params[:name1], params[:name2], params[:name3]].reject(&:blank?)
    
  end
  
 
end
