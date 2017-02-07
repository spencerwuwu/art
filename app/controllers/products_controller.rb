class ProductsController < ApplicationController
  def buy
    product = Product.find(params[:id])
    order = Order.new
    order.product = product
    order.state = 'new'
    if order.save
      redirect_to order_checkout_path(order.id)
    else 
      redirect_to donate_path
    end
  end
end
