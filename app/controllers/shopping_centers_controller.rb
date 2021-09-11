class ShoppingCentersController < ApplicationController
  def index
    @shopping_centers=Shopping_Centers.order(id: :desc).page(params[:page]).per(25)
  end

  def show
    @shopping_center=Shopping_Center.find(params[:id])
  end
end
