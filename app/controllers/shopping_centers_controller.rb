class ShoppingCentersController < ApplicationController
  def index
    @shopping_centers=ShoppingCenters.all
  end
  before_action :set_q, only: [:search]


  def show
    @shopping_center=ShoppingCenter.find(params[:id])
  end
  
  def search
    @results = @q.result
  end

  private

  def set_q
    @q = ShoppingCenter.ransack(params[:q])
  end
end
