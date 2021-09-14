class ShoppingCentersController < ApplicationController
  #def index
    #@shopping_centers=ShoppingCenter.all

  def show
    @shopping_center=ShoppingCenter.find(params[:id])
  end
  
  def search
    #@shop=Shop.where("name LIKE ?", "#{params[:name1]}")
    @shopping_center=ShoppingCenter.joins(:shops).where(shops: {name: params[:name1, :name2, :name3]})
  end
  private
  
 
end
