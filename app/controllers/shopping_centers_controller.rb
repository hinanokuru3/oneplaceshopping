class ShoppingCentersController < ApplicationController
  #def index
    #@shopping_centers=ShoppingCenter.all
  #end
  before_action :shop, only: [:search]
  def show
    @shopping_center=ShoppingCenter.find(params[:id])
  end
  
  def search
    @shopping_center=shop.shopping_center
  end

  private
  
  def shop
    @shop=Shops.where("name LIKE ?", "#{params[:name1]}")
  end

end
