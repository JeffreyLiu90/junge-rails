class Admin::DashboardController < ApplicationController
  before_filter :authorize

  http_basic_authenticate_with name: ENV["ADMIN"], password: ENV["ADMIN_PASS"]
  
  def show
    @productCount = Product.all.count
    @categoryCount = Category.all.count
  end


end
