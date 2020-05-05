class ProductsController < ApplicationController

  def index
    # uses MODEL

    @products = Product.all.order(created_at: :desc)
    # VIEW
    # render :index is implicit to render index view
  end

  def show
    @product = Product.find params[:id]
    # instance variables are available in all places we are trying to render
    # render:show ... "show" as string also works, can even render routes i.e. /shared show
    # also pulls from the layouts folder - everything that contains html that make up the page, so dont have to repeat head, etc. - also where nav is, no need to repeat yourself
    # yield = where show is rendered
  end

end
