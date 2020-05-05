class Admin::DashboardController < ApplicationController
  before_filter :authorize
  
  def show
    @productCount = Product.all.count
    @categoryCount = Category.all.count
  end


end
