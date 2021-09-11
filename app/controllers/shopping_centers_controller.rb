class ShoppingCentersController < ApplicationController
  #def index
    #@shopping_centers=ShoppingCenters.order(id: :desc).page(params[:page]).per(25)
  #end

  def show
    @shopping_center=ShoppingCenter.find(params[:keyword])
  end
  
  def search
    @shopping_centers = ShoppingCenters.search(params[:keyword])
  end
end
