class ShoppingCentersController < ApplicationController
  #def index
    #@shopping_centers=ShoppingCenter.all
  #end
  def show
    @shopping_center=ShoppingCenter.find(params[:id])
  end
  
  def search
    #@shop=Shop.where("name LIKE ?", "#{params[:name1]}")
    @shopping_center=ShoppingCenter.joins(:shops).where("shops.name=name1")
  end

  private
  
 
end
