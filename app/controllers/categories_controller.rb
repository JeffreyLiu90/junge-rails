class CategoriesController < ApplicationController

  def show
    # raise "here" - throw an error
    @category = Category.find(params[:id])
    # raise @category.inspect - inspect on any object, returns string
    @products = @category.products.order(created_at: :desc)
  end

end
