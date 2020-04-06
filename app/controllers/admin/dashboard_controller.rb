class Admin::DashboardController < ApplicationController
  def show
    @productCount = Product.all.count
    @categoryCount = Category.all.count
  end


end
