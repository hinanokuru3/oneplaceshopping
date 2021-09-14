class ShoppingCentersController < ApplicationController
  #def index
    #@shopping_centers=ShoppingCenter.all

  def show
    @shopping_center=ShoppingCenter.find(params[:id])
  end
  
  def search
    #binding.pry
    #@shop=Shop.where("name LIKE ?", "#{params[:name1]}")
    base_condition
    name_condition1
    name_condition2
    name_condition3
  end

  private
  
  def base_condition
    @shopping_center=ShoppingCenter.joins(:shops)
  end
  
  def name_condition1
    if params[:name1].present?
      @shopping_center=@shopping_center.where(shops: {name: params[:name1]})
    end
  end
  
  def name_condition2
    if params[:name2].present?
      @shopping_center=@shopping_center.where(shops: {name: params[:name2]})
      
    end
  end
  
  def name_condition3
    if params[:name3].present?
      @shopping_center=@shopping_center.where(shops: {name: params[:name3]})
    
    end
  end
  
  
 
end
