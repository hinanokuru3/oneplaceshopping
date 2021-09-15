class ShoppingCentersController < ApplicationController
  #def index
    #@shopping_centers=ShoppingCenter.all

  def show
    @shopping_center=ShoppingCenter.find(params[:id])
  end
  
  def search
    #binding.pry
    #@shop=Shop.where("name LIKE ?", "#{params[:name1]}")
    #base_condition
    #name_condition1
    #name_condition2
    #name_condition3
    @shopping_center=ShoppingCenter.search_by_keywords(search_keywords)
  end

  private
  
  def search_keywords
    [params[:name1], params[:name2], params[:name3]].reject(&:blank?)
    
  end
  
 
end
