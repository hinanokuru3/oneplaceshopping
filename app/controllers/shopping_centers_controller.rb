class ShoppingCentersController < ApplicationController
  #def index
    #@shopping_centers=ShoppingCenter.all
  #end

  def show
    @shopping_center=ShoppingCenter.find(params[:id])
  end
  
  def search
    @results = ShoppingCenter.where(shop_name.where("name LIKE ?", "#{params[:name1]}"))
  end

  private

end
