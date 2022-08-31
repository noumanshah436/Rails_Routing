class ProductsController < ApplicationController

  # http://localhost:3000/products
  def index
    @products = Product.order(:name)
  end
  # After this action the associated view will
  # be automatically loaded and any instance
  # variables will be shared with this view.
  # app/views/products/index.html.erb

  # http://localhost:3000/products/:id
  def show
    @product = Product.find(params[:id])
  end

  # http://localhost:3000/about
  def about
     @name = "Nouman"
  end
end
