class ShoppingCentersController < ApplicationController
  #def index
    #@shopping_centers=ShoppingCenter.all
  #end

  def show
    @shopping_center=ShoppingCenter.find(params[:id])
  end
  
  def search
    @shop=Shop.where("name LIKE ?", "#{params[:name1]}")
    @results=ShoppingCenter.find_by(shop_name: @shop)
  end

  private

end
